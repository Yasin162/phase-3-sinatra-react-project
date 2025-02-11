class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/items' do

  items = Item.all

  items.to_json
  end

  get '/items/:id' do
    items = Item.find_by(id: params[:id])

    items.to_json
  end

  get '/carts' do 
    carts = Cart.all

    carts.to_json
  end

end
