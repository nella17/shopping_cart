require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module HackntuShoppingCart
  class Application < Rails::Application
    # clean up generator
    config.generators do |g|
      g.stylesheets     false
      g.javascripts     false
      g.test_framework  false
      g.helper          false
    end
  end
end