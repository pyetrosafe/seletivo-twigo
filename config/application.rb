require_relative "boot"

require "rails/all"

require_relative '../app/middlewares/rules_permissions'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module OnlineCourses
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.1

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: %w(assets tasks))

    # config.autoload_paths += %W(#{config.root}/lib)

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # config.time_zone = "America/Sao_Paulo"
    config.time_zone = ActiveSupport::TimeZone[Time.now.strftime('%z').gsub('0', '').to_i]
    config.active_record.default_timezone = :local

    config.assets.compile = true

    config.middleware.use OnlineCourses::RulesPermissions
  end
end
