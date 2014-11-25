Santa::Application.routes.draw do
  root 'home#index'
  post '/home/participate', to: 'home#participate'
end
