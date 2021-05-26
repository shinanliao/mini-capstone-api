Rails.application.routes.draw do
  get "/products", controller: "products", action: "index"
  post "/products", controller: "products", action: "create"
  get "/products/:id", controller: "products", action: "show"
  patch "/products/:id", controller: "products", action: "update"
  delete "/products/:id", controller: "products", action: "destroy"
  
  get "/suppliers", controller: "suppliers", action: "index"
  
  post "/sessions", controller: "sessions", action: "create"

  post "/users", controller: "users", action: "create"

  get "/orders", controller: "orders", action: "index"
  post "/orders", controller: "orders", action: "create"
  get "/orders/:id", controller: "orders", action: "show"

  get "/carted_products", controller: "carted_products", action: "index"
  post "/carted_products", controller: "carted_products", action: "create"
  delete "/carted_products", controller: "carted_products", action: "destroy"
end
