require 'data_mapper'
require 'dm-postgres-adapter'

class Property

  include DataMapper::Resource

  property :id,             Serial
  property :title,          String,  required: true
  property :description,    String
  property :price_per_night,Integer, required: true
  property :location,       String,  required: true
  property :available_from, Date,    required: true
  property :available_to,   Date,    required: true
  property :image_url,      Text

  belongs_to :user
  has n, :requests

  def available?(start_date, end_date)
    start_date = Date.strptime(start_date, "%Y-%m-%d")
    end_date = Date.strptime(end_date, "%Y-%m-%d")
   if start_date.to_date >= self.available_from && end_date <= self.available_to
     true
   else
     false
   end
  end
end
