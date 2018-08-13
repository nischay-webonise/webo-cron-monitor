Rails.application.routes.draw do
  resources :crons do
    resources :executions, only: :index do
      collection do
        get :create_execution
        get :complete_execution
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
