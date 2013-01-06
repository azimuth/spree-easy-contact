require 'spree_core'
require 'spree_easy_contact_hooks'
require 'recaptcha/rails'

module SpreeEasyContact
  class Engine < Rails::Engine

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end

      Recaptcha.configure do |config|
        config.public_key  =  Spree::Config[:recaptcha_public_key]
        config.private_key =  Spree::Config[:recaptcha_private_key]
      end
    end

    config.to_prepare &method(:activate).to_proc

  end
end
