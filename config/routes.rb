Rails.application.routes.draw do
  namespace :public do
    get 'books/search'
  end
  get 'posts/index'
  get 'posts/show'
  get 'posts/edit'
  get 'posts/new'
  get 'posts/favorites'
  get 'homes/top'
  get 'homes/attention'
# 顧客用
# URL /customers/sign_in ...
devise_for :users, controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

# 管理者用
# URL /admin/sign_in ...
devise_for :admins, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end