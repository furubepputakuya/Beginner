Rails.application.routes.draw do

# homeアクション
  root 'home#top'
  get 'home/notice'
  get "home/board" => "home#board"
  get "home/board_form" => "home#board_form"
  get 'home/analects'
  get 'home/description'
  post "home/logout" => "home#logout"
  post "home/create" => "home#create" 

# postsアクション
  get "posts/jp" => "posts#jp"
  get "posts/:jp" => "posts#prefecture"
  get "posts/:id/show" => "posts#show"

# usersアクション
  get "users/users_entrance" => "users#users_entrance"
  get "users/:id/users_page" => "users#users_page"
  post "users/create" => "users#create"
  post "users/login" => "users#login"

# companyアクション
  get "company/company_entrance" => "company#company_entrance"
  get "company/:id/company_page" => "company#company_page"
  get "company/company_jp" => "company#company_jp"
  get "company/:id/company_entry" => "company#company_entry"
  post "company/login" => "company#login"

  # 新規登録アクション
  get "company/:id/company_form" => "company#company_form_jp"
  post "company/:id/confirm" => "company#confirm"
  post "company/:id/confirm_va" => "company#confirm_va"
  post "company/create" => "company#create"

  # 新規登録アクション(戻りボタン)
  post "company/:id/return" => "company#return"
  post "company/:id/return_confirm" => "company#return_confirm"

  # 内容変更アクション
  get "company/:id/company_form_change" => "company#company_form_change"
  post "company/:id/confirm_ud" => "company#confirm_ud"
  post "company/:id/confirm_ud_va" => "company#confirm_ud_va"
  post "company/form_create" => "company#form_create"
  post "company/:id/update" => "company#update"

  # 内容変更アクション(戻りボタン)
  post "company/:id/return_ud" => "company#return_ud"
  post "company/:id/return_confirm_ud" => "company#return_confirm_ud"

  # 削除アクション
  post "company/:id/destroy" => "company#destroy"

# likesアクション
  post "likes/:id/create" => "likes#create"
  post "likes/:id/destroy" => "likes#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
