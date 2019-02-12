module Marketplace
  module V1
    class Properties < Grape::API
      resource :properties do
        # GET /properties
        desc "Retrieves properties info"
        paginate per_page: 24
        get do
          properties = Property.all
          final = Rails.cache.fetch(Property.cache_key(properties)) do
            (paginate properties).to_a
          end

          final
        end
      end
    end
  end
end
