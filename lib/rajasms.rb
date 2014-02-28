require "rajasms/version"
require 'httparty'

module Rajasms
  class Client
  	include HTTParty

    RAJASMS_URI = 'http://162.211.84.203'
    SMSREGULER_PATH = '/sms/smsreguler.php'

  	base_uri RAJASMS_URI

  	def initialize username, password, api_key
  		@username = username
      @password = password
      @api_key  = api_key
  	end

    def reguler to, message
      if message.length <= 160
        self.class.post(SMSREGULER_PATH, build_query(number:to, message: message))
      else
        nil
      end
    end

    private
    def build_query query
      query ||= {}
      query.merge!(key: @api_key, username: @username, password: @password)
      {query: query}
    end

  end
end
