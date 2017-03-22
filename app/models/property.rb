require 'data_mapper'
require 'dm-postgres-adapter'

class Property

include DataMapper::Resource

property :id,              Serial
property :title,           String
property :description,     String
property :price_per_night, Integer
property :location,        String
property :available,       String
property :available_from,  Date

belongs_to :user

end
