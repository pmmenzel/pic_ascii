require 'active_record'
require_relative '../app/models/picture'

ActiveRecord::Base.establish_connection(:adapter => 'sqlite3', :database => "#{File.dirname(__FILE__)}/../db/mule_deer.sqlite3")
