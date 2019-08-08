Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
    get '/users/index', to: "users#index"
  
    get '/users/new', to: "users#new"

  # 新規登録を行う
    post '/users', to: 'users#create' 

  # delete 'users/#{user.id}'  , to: 'users#destroy'
    delete '/users/:id' , to: 'users#destroy'

  #編集する
    get '/users/:id/edit', to:'users#edit'
end

