module Marketplace
  module V1
    class EmptyBodyException < StandardError; end
    class All < Grape::API
      version "v1", using: :accept_version_header
      format :json

      helpers do
        def permitted_params
          declared(params, include_missing: false)
        end
      end

      before do
        header "Access-Control-Allow-Origin", "*"
      end

      default_format :json

      mount Marketplace::V1::Properties
    end
  end
end
