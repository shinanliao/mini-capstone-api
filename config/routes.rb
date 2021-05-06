Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/all_products", controller: "products", action: "show_all"
  get "/one_product", controller: "products", action: "show_one"
end
