Rails.application.routes.draw do
  
  #GET / triggers index action of cats controller
  root 'cats#index', as: 'home'
  # GET /id triggers show command of cats controller
  # must be numeric
  get 'cats/:id' => 'cats#show', constraints: {id: /\d+/}, as: 'cat'
  
  get 'adopt/:id', to: 'cats#adopt', as: 'adopt'
  # set up a route:
  # get 'path' => 'controller#action', as: 'nickname'
end
