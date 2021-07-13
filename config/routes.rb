Rails.application.routes.draw do
  get"/blogs", to: "blogs/#index"
  
  ressource :users, only: [:new, :show, :destroy, :edit] 
  
end
