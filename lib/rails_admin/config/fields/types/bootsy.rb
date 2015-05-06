require 'rails_admin/config/fields/types/wysihtml5'

module RailsAdmin
  module Config
    module Fields
      module Types
        class Bootsy < Wysihtml5
          # Register field type for the type loader
          RailsAdmin::Config::Fields::Types.register(self)

          register_instance_option :css_location do
            ActionController::Base.helpers.asset_path('bootsy.css')
          end

          register_instance_option :js_location do
            ActionController::Base.helpers.asset_path('bootsy.js')
          end

          register_instance_option :partial do
            :form_bootsy
          end
        end
      end
    end
  end
end
