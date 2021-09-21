Rails.application.routes.draw do
  resources :favs, only: [:create, :destroy, :index]
  resources :beaches, only: [ :index, :create, :show]
  resources :sessions, only: [:create]
  resources :registrations, only: [:create, :index]
  root to: "beaches#index"
  get :humboldt, to: "beaches#humboldt"
  get :mendosino, to: "beaches#mendocino"
  get :sonoma, to: "beaches#sonoma"
  get :marin, to: "beaches#marin"
  get :sanfrancisco, to: "beaches#sanfrancisco"
  get :sanmateo, to: "beaches#sanmateo"
  get :santacruz, to: "beaches#santacruz"
  get :monterey, to: "beaches#monterey"
  get :sanluis, to: "beaches#sanluisobispo"
  get :santabarbara, to: "beaches#santabarbara"
  get :ventura, to: "beaches#ventura"
  get :losangeles, to: "beaches#losangeles"
  get :orange, to: "beaches#orange"
  get :sandiego, to: "beaches#sandiego"
end
