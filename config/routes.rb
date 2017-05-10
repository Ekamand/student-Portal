Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students
  # get "/index" => "students#index"
   get "/login" => "sessions#new"
 post "/login" => "sessions#create"
   get "/update" => "students#edit"

   get "/resume/experience" => "experiences#edit"

   get "/resume/education" => "educations#edit"

end
