require 'sinatra'
require 'data_mapper'
require 'sinatra/reloader'
require 'date'

DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/todo_list.db")
class Item
    include DataMapper::Resource
    property :id, Serial
    property :content, Text, :required => true
    property :done, Boolean, :required => true, :default => false
    property :created, DateTime
end
DataMapper.finalize.auto_upgrade!

#動作テスト
debug_counter=0
before do
 debug_counter+=1
end
    
get '/debug_create' do
       Item.create(:content => "Hello #{debug_counter.to_s}!",:done => [true, false].sample  ,:created => Time.now)
end

get '/debug_show' do 
  Item.all.map {|r| "#{r.id}, #{r.content}, #{r.done}, #{r.created} <br>" }
end
