require 'data_mapper'
require 'dm-postgres-adapter'

class Request

  include DataMapper::Resource

  property :id,                   Serial
  property :start_date,           Date
  property :end_date,             Date
  property :confirmation_status,  Boolean

  belongs_to :user
  belongs_to :property
end
