Rails.application.routes.draw do

  root 'homes#index'

  post '/tweet', to: 'homes#tweet'

end
