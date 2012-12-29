Rails.application.routes.draw do
  # add the following (or something similar) to your application's routes.rb file:
  # match '/contact-us' => 'contacts#new', :as => :contact
  
  resources :contacts, :controller => 'contacts'
  
  namespace :admin do
    resources :contacts
    resources :topics
  end
end
