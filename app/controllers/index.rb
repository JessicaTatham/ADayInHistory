
get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/animal' do
  require 'Wikipedia'
  @page = Wikipedia.find(params[:animal])
  content_type 'html'
  erb :facts, layout: false
end 
