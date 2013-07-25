LocomotiveSubscription::Engine.routes.draw do
  resources :subscriptions, :only => [:create]
  match 'subscription_delete' => 'subscriptions#delete', as: 'delete'
end
