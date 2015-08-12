require 'rubygems'
require 'sinatra'
require 'sys/cpu'

get '/' do
  cpu_name = Sys::CPU.model || Sys::CPU.processors.first.cpu
  erb :index, locals: {cpu: cpu_name}
end
