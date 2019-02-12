class Property < ApplicationRecord
  def self.cache_key(properties)
    {
      model: "properties",
      stat_record: properties.maximum(:updated_at)
    }
  end
end
