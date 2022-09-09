class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/users" do
    users = User.all
    users.to_json
  end

  get "/users/:id" do
    user =User.find(params[:id])
    user.to_json
  end

  post "/users" do
    user = User.create(
      name: params[:name],
      username: params[:username],
      password: params[:password]
    )
    user.to_json
  end


  get "/pets" do
    pets = Pet.all.order(:name)
    pets.to_json
  end

  get "/pets/:id" do
    pet =Pet.find(params[:id])
    pet.to_json
  end
 
  post "/pets" do
    pet = Pet.create(
      name: params[:name],
      breed: params[:breed],
      image: params[:image],
      age: params[:age]
    )
  end

  patch "/pets/:id" do
    pet =Pet.find(params[:id])
    pet.update(
      name: params[:name],
      breed: params[:breed],
      image: params[:image],
      age: params[:age]
    )
    pet.to_json
  end
   
   delete "/pets/:id" do
    pet =Pet.find(params[:id])
    pet.destroy
    pet.to_json
   end

   delete "/users/:id" do
    user =User.find(params[:id])
    user.destroy
    user.to_json
   end

end
