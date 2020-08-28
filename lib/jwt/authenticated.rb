# frozen_string_literal: true

require 'active_support'
require 'active_support/concern'
require 'active_support/configurable'
require 'active_support/cache'
require 'active_support/core_ext/hash'
require 'active_support/time'
require 'active_support/time_with_zone'

require 'jwt'

require 'jwt/authenticated/version'
require 'jwt/authenticated/configuration'
require 'jwt/authenticated/jwt'
require 'jwt/authenticated/rsa_public_key'

module Jwt
  # The JWT authentication concern.
  module Authenticated
    extend ActiveSupport::Concern

    class << self
      attr_writer :configuration
    end

    # Retrieve the current configuration object.
    #
    # @return [Configuration]
    def self.configuration
      @configuration ||= Configuration.new
    end

    # Configure the concern by providing a block which takes
    # care of this task. Example:
    #
    #   Jwt::Authenticated.configure do |conf|
    #     # conf.xyz = [..]
    #   end
    def self.configure
      yield(configuration)
    end

    # Reset the current configuration with the default one.
    def self.reset_configuration!
      self.configuration = Configuration.new
    end
  end
end
