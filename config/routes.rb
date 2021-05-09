Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'posts#top' #トップページ表示

  resources :posts # postsのCRUD処理
end
