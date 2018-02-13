Rails.application.routes.draw do

  root 'static_pages#home'

  get 'static_pages/home'

  get 'delete', to: 'gossips#destroy'

  resources :gossips

  devise_for :users


end

#                  Prefix Verb   URI Pattern                    Controller#Action
#                    root GET    /                              static_pages#home
#       static_pages_home GET    /static_pages/home(.:format)   static_pages#home
#                 gossips GET    /gossips(.:format)             gossips#index
#                         POST   /gossips(.:format)             gossips#create
#              new_gossip GET    /gossips/new(.:format)         gossips#new
#             edit_gossip GET    /gossips/:id/edit(.:format)    gossips#edit
#                  gossip GET    /gossips/:id(.:format)         gossips#show
#                         PATCH  /gossips/:id(.:format)         gossips#update
#                         PUT    /gossips/:id(.:format)         gossips#update
#                         DELETE /gossips/:id(.:format)         gossips#destroy
#        new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#            user_session POST   /users/sign_in(.:format)       devise/sessions#create
#    destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#       new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#      edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#           user_password PATCH  /users/password(.:format)      devise/passwords#update
#                         PUT    /users/password(.:format)      devise/passwords#update
#                         POST   /users/password(.:format)      devise/passwords#create
#cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#   new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#  edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#       user_registration PATCH  /users(.:format)               devise/registrations#update
#                         PUT    /users(.:format)               devise/registrations#update
#                         DELETE /users(.:format)               devise/registrations#destroy
#                         POST   /users(.:format)               devise/registrations#create

