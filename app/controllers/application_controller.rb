class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # weapon

  get "/weapons" do
    weapons = Weapon.all
    weapons.to_json(include: {characters: {only: [:name, :level ]}})
  end
 
  delete '/weapons/:id' do 
    weapon = Weapon.find(params[:id])
    weapon.destroy
    "Weapon Deleted"
  end 

  post '/weapons' do
  weapon = Weapon.create(params[:name])
  end 

  patch '/weapons/:id' do
    weapon = Weapon.find(params[:id])
    weapon.update(
      name: params[:name]
    )
    weapon.to_json
  end 

  #user

  get "/users" do 
    users = User.all
    users.to_json(include: {characters: {only: [:name, :level ]}})
  end 

  get '/users/:id/characters' do 
    user = User.find(params[:id])
    user.to_json(include: { characters: { only: [:name, :level] } } )  
  end 

  delete '/users/:id' do 
    user = User.find(params[:id])
    user.destroy
    "User Deleted"
  end 

  post '/users' do
    user = User.create(name: params[:name])
    user.to_json
    end 

  patch '/users/:id' do
    user = User.find(params[:id])
    user.update(
      name: params[:name]
    )
    user.to_json
  end 

#characters 

  get "/characters" do 
    characters = Character.all 
    characters.to_json
  end

  get '/characters/:id' do 
    character = Character.find(params[:id])
    character.to_json  
  end 

  delete '/characters/:id' do 
    character = Character.find(params[:id])
    character.destroy
    "Character Deleted"
  end 
  
  post '/characters' do
    charater = Character.create(
      name: params[:name], 
      race: params[:race], 
      alignment: params[:alignment], 
      background: params[:background], 
      klass: params[:klass], 
      level: params[:level],
      weapon_id: params[:weapon_id],
      user_id: params[:user_id])
  end 

  patch '/characters/:id' do 
  character = Character.find(params[:id])
  character.update(
    name: params[:name],
    race: params[:race],
    alignment: params[:alignment],
    background: params[:background],
    klass: params[:klass],
    level: params[:level]
  )
  character.to_json
  end 
end

