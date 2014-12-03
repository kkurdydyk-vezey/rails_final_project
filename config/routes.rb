Rails.application.routes.draw do
  
  #GET / triggers index action of cats controller
  root 'cats#index'
  # GET /id triggers show command of cats controller
  # must be numeric
  get 'cats/:id' => 'cats#show', constraints: {id: /\d+/}, as: 'cat'
  
end
