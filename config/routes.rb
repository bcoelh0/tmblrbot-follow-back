TmblrbotFb::Application.routes.draw do

  get "users/show"
  get "/logout", to: "users#logout"
  get '/main', to: 'home#main'
  root 'home#landing'

  resources :users do
    resources :blogs
  end

  get '/auth/:provider/callback', to: 'users#check'
  post '/auth/tumblr/callback', to: 'users#check' #necessary for rspec to pass


  #Redirects
  get "/login" => redirect("/auth/tumblr")
  get "/sign_in" => redirect("/auth/tumblr")
  get "/signin" => redirect("/auth/tumblr")
  get "/sign_up" => redirect("/auth/tumblr")
  get "/signup" => redirect("/auth/tumblr")
end
