Rails.application.routes.draw do
 # POST /signup
 post '/signup', to: 'users#create'

 # GET /me
 get '/me', to: 'users#show'

#  POST /login
post '/login', to: 'sessions#create'

# DELETE /logout
delete '/logout', to: 'sessions#destroy'
end
