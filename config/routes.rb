Rails.application.routes.draw do
  # add the following (or something similar) to your application's routes.rb file:
  # match '/contact-us' => 'contacts#new', :as => :contact
  
  resources :contacts
  
  namespace :admin do
    resources :topics
    resources :conversations do
      member do
        post "complete"
      end
    end
    resources :contacts
  end
end
