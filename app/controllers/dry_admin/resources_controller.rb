require_dependency "dry_admin/application_controller"

module DryAdmin
  class ResourcesController < ApplicationController
  	before_action :set_model
    before_action :attribute_types, :only => [:new, :edit]
  	def index
      # CONDITIONALLY SELECT ONLY RECORDS FROM 1:N RELATION
      where = {}
      @belongs_to = @model.reflect_on_all_associations(:belongs_to).map(&:name)
      @belongs_to.each do |association|
        association_column = (association.to_s+"_id").to_sym
        where[association_column] = params[association_column] if params[association_column].present?
      end
  		@records = @model.where(where).paginate(:page => params[:page], :per_page => 15)
      @submodels = @model.reflect_on_all_associations(:has_many)
  	end

  	def new
  		@record = @model.new
  	end

    def create
      @record = @model.new(resource_params)
      if @record.save
        redirect_to({action: 'index'}, notice: "#{@model.name} successfully saved")
      else
        render 'new'
      end
    end

    def show
      @record = @model.find(params[:id])
    end

    def edit
      @record = @model.find(params[:id])
    end

    def update
      @record = @model.find(params[:id])
      if @record.update(resource_params)
        redirect_to({action: 'index'}, notice: "#{@model.name} successfully updated")
      else
        render 'edit'
      end
    end
    
    def destroy
      @record = @model.find(params[:id])
      if @record.destroy
        redirect_to({action: 'index'}, notice: "#{@model.name} successfully destroyed")
      else
        redirect_to({action: 'index'}, alert: "#{@model.name} hasn't been destroyed")
      end
    end

  	private 

  	def set_model
  		@model = Object.const_get params[:model].singularize.split("_").map(&:capitalize).join("")
  	end

    def attribute_types
      @types = @model.columns_hash.map {|k,v| {k => v.type}}.reduce({}, :merge)
    end

    private

    def resource_params
      params.require(@model.name.downcase).permit(@model.attribute_names)
    end
  end
end
