require 'data_mapper'
require 'dm-postgres-adapter'

class Request

  include DataMapper::Resource

  property :id,                   Serial
  property :start_date,           Date, required: true
  property :end_date,             Date, required: true
  property :confirmation_status,  Boolean

  belongs_to :user
  belongs_to :property

  def valid_request?
    self.start_date <= self.end_date ? true : false
  end
end
