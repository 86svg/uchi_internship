Rails.application.routes.draw do
  resources :students, only: %i[create destroy]

  resources :schools, only: %i[create show destroy] do
    resources :class_books, path: 'classes', only: :index do
      resources :students, only: :index
    end
  end
end
