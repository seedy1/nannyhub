Rails.application.routes.draw do
  get 'jobs/index'
  get 'jobs/show'
  get 'jobs/most_recent'
  get 'jobs/interested'
  resources :nanny_jobs
    devise_for :users, :controllers => { registrations: 'registrations' }

    devise_for :admins
    
    root 'welcome#index'
    get 'welcome/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
