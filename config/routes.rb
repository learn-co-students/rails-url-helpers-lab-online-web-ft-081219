Rails.application.routes.draw do
  resources :students, only: [:index, :show]
  get "/students/:id/activate" as: 'activate-student'
end
