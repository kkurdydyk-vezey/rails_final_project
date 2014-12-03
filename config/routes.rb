Rails.application.routes.draw do
  
  get 'breeds/index'

  #GET / triggers index action of cats controller
  root 'cats#index', as: 'home'
  get 'cats' => 'cats#index'
  # GET /id triggers show command of cats controller
  # must be numeric
  get 'cats/:id' => 'cats#show', constraints: {id: /\d+/}, as: 'cat'
  get 'breeds' => 'breeds#index', as: 'breeds'
  get 'adopt/:id', to: 'cats#adopt', as: 'adopt'
  # set up a route:
  # get 'path' => 'controller#action', as: 'nickname'
end
