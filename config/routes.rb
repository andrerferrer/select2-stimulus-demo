Rails.application.routes.draw do
  resources :gardens do
    resources :plants, only: [ :new, :create ]
  end

  # actions for ONE element are not nested
  resources :plants, only: %i[ destroy ] do
    resources :plant_tags, only: %i[ new create ]
  end

end
