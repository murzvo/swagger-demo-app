Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount SwaggerUiEngine::Engine, at: "/api_docs"

  namespace :api do
    resources :drugs, only: %i[index show]
  end
end
