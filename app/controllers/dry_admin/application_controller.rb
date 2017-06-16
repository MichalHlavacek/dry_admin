module DryAdmin
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :menu

	def menu
		Rails.application.eager_load!
		@models = ActiveRecord::Base.descendants.reject {|m| m.name == "ApplicationRecord" or m.name == "ActiveRecord::SchemaMigration" or m.name == "DryAdmin::ApplicationRecord"}
	end
  end
end
