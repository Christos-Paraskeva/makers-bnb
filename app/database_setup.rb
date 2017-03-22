require 'data_mapper'
require 'dm-postgres-adapter'
require_relative 'models/user'
require_relative './models/property'
require_relative 'models/request'

# DataMapper::Logger.new(STDOUT, :debug)
DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/makers_bnb_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!

# this can be used to debug datamapper errors and get more clarity
# p x.errors.full_messages.flatten.join(', ')
