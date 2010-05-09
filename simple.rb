require 'rubygems'
require 'sinatra'

##
## This is a before filter that 
##
# set utf-8 for outgiong
before do
  headers "Content-Type" => "text/html; charset=utf-8"
end

get '/' do
  @title = "Fly Me To The Moon"
  erb :form
end

post '/' do
  @name = "#{params[:post][:first_name]} #{params[:post][:last_name]}"
  @title = "Hello #{@name}"
  erb :hello
end  
  
__END__

@@ fly
Anything goes.

