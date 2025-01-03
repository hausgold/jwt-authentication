# frozen_string_literal: true

# The gem version details.
module Keyless
  # The version of the +keyless+ gem
  VERSION = '1.5.0'

  class << self
    # Returns the version of gem as a string.
    #
    # @return [String] the gem version as string
    def version
      VERSION
    end

    # Returns the version of the gem as a +Gem::Version+.
    #
    # @return [Gem::Version] the gem version as object
    def gem_version
      Gem::Version.new VERSION
    end
  end
end
