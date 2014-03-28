Dummy::Application.routes.draw do
  root 'demo#index'
  post 'set_token' => 'demo#set_token', :as => :set_token
  get  'list_devices' => 'demo#list_devices', :as => :list_devices
  post 'push' => 'demo#push', :as => :push
  get  'logout' => 'demo#logout', :as => :logout

end
