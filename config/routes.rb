Rails.application.routes.draw do
  resources :gardens do
    resources :plants, only: [ :new, :create ]
  end

  # actions for ONE element are not nested
  resources :plants, only: %i[ destroy ]

end
