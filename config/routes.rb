Rails.application.routes.draw do
  root to:"homes#top"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :post_images, only: [:new, :create, :index, :show]

  get '/homes/about' => 'homes#about', as: 'about'
  #↑名前付きルートにする場合、［as: '変更したい名前'］を後ろに記述する。
end
