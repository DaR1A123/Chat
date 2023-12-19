require "active_support/core_ext/integer/time"

Rails.application.configure do


  # Code is not reloaded between requests.
  config.cache_classes = true


  config.eager_load = true

  # Full error reports are disabled and caching is turned on.
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true


  config.require_master_key = true


  config.public_file_server.enabled = ENV["RAILS_SERVE_STATIC_FILES"].present?


  config.assets.compile = false


  config.log_level = :info

  # Prepend all log lines with the following tags.
  config.log_tags = [ :request_id ]



  config.action_mailer.perform_caching = false


  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation cannot be found).
  config.i18n.fallbacks = true

  # Don't log any deprecations.
  config.active_support.report_deprecations = false

  # Use default logging formatter so that PID and timestamp are not suppressed.
  config.log_formatter = ::Logger::Formatter.new


  if ENV["RAILS_LOG_TO_STDOUT"].present?
    logger           = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
    config.logger    = ActiveSupport::TaggedLogging.new(logger)
  end

  # Do not dump schema after migrations.
  config.active_record.dump_schema_after_migration = false
end
