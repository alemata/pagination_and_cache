# Copyright Jovio, LLC 2016

module Marketplace
  class API < Grape::API
    mount Marketplace::V1::All
  end
end
