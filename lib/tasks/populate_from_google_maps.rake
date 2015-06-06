require 'blanket'
require 'hashie'

module Screening
  class Providers
    attr_accessor :google_api_key, :city

    def initialize(google_api_key, city)
      @google_api_key = google_api_key
      @city = city
      @base_uri = 'https://maps.googleapis.com/maps/api/place/autocomplete/json?'
    end

    def call
      params = { 'key' => google_api_key.dup,
                 'city' => city.dup,
                 'input' => 'prenatal care fresno'
                }
      hash_request = request.get(params: params)
      payload = payload_hash(hash_request)
      translate_payload(payload) { payload[:predictions] }
    end

    private

    def request
      params = { 'key' => google_api_key.dup,
                 'city' => city.dup,
                 'input' => 'prenatal care fresno'
                }
      Blanket.wrap(@base_uri.dup)
    end

    def payload_hash(hash_request)
      payload = hash_request.first.to_h
      Hashie.symbolize_keys!(payload)
    end

    def translate_payload(payload, &block)
      return [] if payload.empty?
      block.call
    end
  end
end