Rails.application.routes.draw do
  get "/characters", to: "characters#index"
  get "/characters/:id", to: "characters#show", as: "character"
end
