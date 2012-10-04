TechLocator::Application.routes.draw do
	resources :admin
  devise_for :admins
  match 'location/:slug' => 'location#show'
  match 'location/:slug/image.jpg' => 'location#showImage'
  root :to => 'home#index'
end
