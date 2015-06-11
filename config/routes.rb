Rails.application.routes.draw do
   mount Api::Endpoints => '/api'

   root 'home#index'
end
