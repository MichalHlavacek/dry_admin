module DryAdmin
  module ResourcesHelper
    def input_field(f, name, type)
      fields = {:string => 'text_field', :text => 'text_area', :integer => 'number_field', :float => 'number_field', :decimal => 'number_field', :datetime => 'datetime_field',
                :timestamp => 'datetime_field', :time => 'time_field', :date => 'date_field', :binary => 'text_area', :boolean => 'check_box'}
      # CHECKBOX EXCEPTION
      if type == :boolean
        f.send(fields[type], name)
      else
        f.send(fields[type], name, :class=>"form-control", :placeholder => name.upcase.gsub("_"," "))
      end
    end
  end
end
