Rails.application.routes.draw do

  # new custom routes
  get 'view_questions', to: 'questions#index', as: 'questions'
  get 'answer_questions', to: 'questions#answer_questions', as: 'answer_questions'
  get "vendor_setting", to: "vendors#vendor_settings"
  get "view_vendors", to: "internal_users#view_vendors"
  get "approve_vendors", to: "internal_users#approve_vendors"
  get "vendor_summary", to: "internal_users#vendor_summary"
  get "view_accounts", to: "internal_users#view_accounts"
  get "show_assignments", to: "vendor_assignments#show_assignments"
  get "view_files", to: "upload_files#view_files"
  get "view_vendor_files", to: "vendors#view_vendor_files"
  get "contact_us", to: "vendors#contacts"
  get "triage_questionnaire_responses", to: "vendors#triage_questionnaire_responses"
  get "data_questionnaire_responses", to: "vendors#data_questionnaire_responses"
  get 'ques', to: 'vendor_responses#new', as: 'triage'

  devise_for :users
  resources :upload_files
  resources :tasks
  resources :task_allocations
  resources :alerts
  resources :vendor_responses
  resources :vendor_assignments
  resources :questions
  resources :performances
  resources :internal_users do 
    post :search, on: :collection
  end
  resources :vendors do
    post :search, on: :collection
  end

  match "/403", to: "errors#error_403", via: :all
  match "/404", to: "errors#error_404", via: :all
  match "/422", to: "errors#error_422", via: :all
  match "/500", to: "errors#error_500", via: :all

  get :ie_warning, to: 'errors#ie_warning'
  get :javascript_warning, to: 'errors#javascript_warning'

  # set root to home page
  root to: "pages#home"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
