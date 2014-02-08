Comicbin::Application.routes.draw do

  #set root as index
  root "comics#index"
  
  get "/comics" => "comics#index"
  get "/comics/new" => "comics#new"
  get "/comics/add" => "comics#add"

  get "/comics/show/:comic_id" => 'comics#show'
  get "/comics/delete/:comic_id" => 'comics#delete'

end
