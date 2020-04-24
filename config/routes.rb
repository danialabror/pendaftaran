Rails.application.routes.draw do
  get 'finishs/index'
  get 'start/index'
  get 'users/index'
  get 'users/store'
  get 'rapots/index'
  get 'rapots/store'
  get 'penerimaans/index'
  get 'penerimaans/store'
  get 'ortus/index'
  get 'ortus/store'
  get 'kesehatans/index'
  get 'kesehatans/store'
  get 'alamats/index'
  get 'alamats/store'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'start#index'
  #--------------------------------------------------------------------------------
  get "/step-1", to: "penerimaans#index"     #penerimaan
  post "/penerimaans/store", to: "penerimaans#store"   #penerimaan
  #--------------------------------------------------------------------------------
  get "/step-2", to: "users#index"
  post "/users/store", to: "penerimaans#storeBioSiswa"
  #--------------------------------------------------------------------------------
  match '/step-3/:id' => 'alamats#index', via: :get, as: :alamats
  post "/alamats/store", to: "alamats#store"
  #--------------------------------------------------------------------------------
  match '/step-4/:user_id' => 'kesehatans#index', via: :get, as: :kesehatans
  post "/kesehatans/store", to: "kesehatans#store"
  #--------------------------------------------------------------------------------
  match '/step-5/:user_id' => 'ortus#index', via: :get, as: :ortus
  post "/ortus/store", to: "ortus#store"
  #--------------------------------------------------------------------------------
  match '/step-6/:user_id' => 'rapots#index', via: :get, as: :rapots
  post "/rapots/store", to: "rapots#store"
  #--------------------------------------------------------------------------------
  match '/finish/:user_id' => 'finishs#index', via: :get, as: :finishs
end
