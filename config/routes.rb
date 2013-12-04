Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  namespace :admin do
    resources :taxon_relations do
      member do
        get :attach
      end
    end
  end
end
