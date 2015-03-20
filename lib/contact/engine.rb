require "simple_form"

module Contact
  class Engine < ::Rails::Engine
    isolate_namespace Contact

    initializer :include_helpers do |app|
      ActiveSupport.on_load :action_controller do
        helper Contact::MessagesHelper
      end
    end

    initializer :append_migrations do |app|
      unless app.root.to_s.match root.to_s
        config.paths["db/migrate"].expanded.each do |expanded_path|
          app.config.paths["db/migrate"] << expanded_path
        end
      end
    end
  end
end
