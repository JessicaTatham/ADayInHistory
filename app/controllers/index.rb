get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/articles' do
  TimesWire::Base.api_key = 'ccad39acf821ddb0c60d49a4fc361436:17:69505150'
  @item = TimesWire::Item.latest('nyt')
erb :articles
end
