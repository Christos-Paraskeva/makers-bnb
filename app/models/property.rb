require 'data_mapper'
require 'dm-postgres-adapter'

class Property

include DataMapper::Resource

property :id,       Serial
property :name,     String


end
