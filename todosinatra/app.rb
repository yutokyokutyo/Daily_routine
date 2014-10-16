# -*- coding: utf-8 -*-
DataMapper.setup(:default, 'sqlite3:db.sqlite3')

class Post
  include DataMapper::Resource
  property :id, Serial
  property :user, String
  property :create_at, DateTime
  auto_upgrade!
end

get '/' do
  @post = Post.all.map{|r| "#{r.id}, #{r.user},#{r.create_at} <br />"} 
  erb :index
end

get '/:id' do
  @post = Post.get(params[:id])
  erb :post
end

get '/create' do
  post = Post.create(:user => params[:user],:create_at => Time.now)
  "#{params[:user]}"
end

post '/create' do
  post = Post.new(:user => params[:user])
  if post.save
    status 201
    redirect '/'+post.id.to_s
  else
    status 412
    redirect '/'
  end
end
