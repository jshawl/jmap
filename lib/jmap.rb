require 'net/http'
require 'uri'
require 'json'

module JMAP
  module Client
    class Session
      attr_reader :json, :url
      def initialize(url:)
        @url = url
        uri = URI(@url)
        req = Net::HTTP::Get.new(uri)
        req['Authorization'] = "Bearer #{ENV['JMAP_API_TOKEN']}"
        res = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) {|http|
          http.request(req)
        }
        @json = res.body
      end

      def capabilities
        parsed_json["capabilities"]
      end

      private

      def parsed_json
        JSON.parse(@json)
      end
    end
  end
end
