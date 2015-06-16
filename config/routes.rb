Rails.application.routes.draw do
   mount Api::Endpoints => '/api'
   constraints ->(request) { request.format == 'html' } do
       match "*path" => 'home#index', via: :get
     end
   root 'home#index'
end
