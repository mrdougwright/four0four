Fourof::Application.routes.draw do
  resources :notfounds

  root 'welcome#index'
end
