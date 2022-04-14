Rails.application.routes.draw do
  devise_for :accounts

  devise_scope :account do
    authenticated :account do
      root 'home#index', as: :authenticated_root
    end


    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
