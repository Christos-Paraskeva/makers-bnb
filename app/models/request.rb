require 'data_mapper'
require 'dm-postgres-adapter'

class Request

  include DataMapper::Resource

  property :id,                   Serial
  property :start_date,           Date
  property :end_date,             Date
  property :confirmation_status,  Boolean

  # def valid_request?(requested_date)
  #   return true if requested_date >= self.start_date && requested_date < self.end_date
  #   false
  # end
  belongs_to :user
  belongs_to :property
end
