require 'data_mapper'
require 'dm-postgres-adapter'

class Property

  include DataMapper::Resource
  # include Paperclip::Resource

  property :id,             Serial
  property :title,          String
  property :description,    String
  property :price_per_night,Integer
  property :location,       String
  property :available_from, Date
  property :available_to,   Date
  property :image_url,      String

  # has_attached_file :avatar,
  #                   :styles => { :medium => "400x340>" }

  belongs_to :user
  has n, :requests
end
