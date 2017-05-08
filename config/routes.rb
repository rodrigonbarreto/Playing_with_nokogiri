Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "registrations" }
  #devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :restaurants

  get 'home/choosed' => 'home#choosed'
  root 'home#index'
  get 'home/randomselect/:id' => 'home#randomselect', as: 'randomselect'

  #get "*path" => redirect("/")

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
