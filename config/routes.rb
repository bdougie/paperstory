Paperstory::Application.routes.draw do
 	
 	resources :papers

  get "welcome/index"

  get "welcome/about"

  root to: 'welcome#index'



end
