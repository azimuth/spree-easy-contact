Rails.application.routes.draw do
  # add the following (or something similar) to your application's routes.rb file:
  # match '/contact-us' => 'contacts#new', :as => :contact
  
  resources :contacts
  
  namespace :admin do
    resources :topics
    resources :conversations
    resources :contacts
  end
end
