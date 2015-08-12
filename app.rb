require 'rubygems'
require 'sinatra'

get '/' do
  cpu_name = `uname -m`.strip
  erb :index, locals: {cpu: cpu_name}
end
