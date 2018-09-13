Rails.application.routes.draw do
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'volunteers/propose', to: 'volunteers#propose'

  resources :volunteers, except: [:index, :edit]
  root to: 'pages#home'

  get 'volunteers/propose', to: 'volunteers#propose'

  get '/contact', to: 'pages#contact'

  get '/news', to: 'pages#news'

  get '/about', to: 'about#who'

  get '/quickstart', to: 'pages#quickstart'

  #about
  get '/about/conduct', to: 'about#conduct'

  get '/about/diversity', to: 'about#diversity'

  get '/about/press', to: 'about#press'

  get '/about/principals', to: 'about#principals'

  get '/about/projects', to: 'about#projects'

  # get '/about/vision', to: 'about#vision'

  get '/about/what', to: 'about#what'

  #get '/projects', to: 'projects#show', as: 'projects_show'

end
