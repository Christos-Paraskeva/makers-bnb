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

  # def initialize(params)
  #     request = Request.new(start_date:             params[:start_date],
  #                            end_date:               params[:end_date],
  #                            confirmation_status:    false,
  #                            user_id:                session[:user].id,
  #                            property_id:            session[:property_id])
  #   self.valid_request?
  # end

# private

  def valid_request?
    self.start_date <= self.end_date ? true : false
  end
end
