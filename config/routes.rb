Rails.application.routes.draw do
  get 'schedules/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'posts#top' #トップページ表示

  resources :schedules # schedulesのCRUD処理
end
