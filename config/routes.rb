Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  
  #GET / triggers index action of cats controller
  root 'cats#index', as: 'home'
  get 'cats' => 'cats#index'
  # GET /id triggers show command of cats controller
  # must be numeric

  get 'about' => 'cats#aboutus', as: 'about'
  get 'contactus' => 'cats#contact', as: 'contact'

  get 'cats/:id' => 'cats#show', constraints: {id: /\d+/}, as: 'cat'
  get 'breeds' => 'breeds#index', as: 'breeds'
  get 'breeds/:id' => 'breeds#show', constraints: { id: /\d+/}, as: 'breed'
  get 'adopt/:id', to: 'cats#adopt', as: 'adopt'
  # set up a route:
  # get 'path' => 'controller#action', as: 'nickname'
  
  get 'search_results' => 'cats#search_results', as: 'search_results'
end
