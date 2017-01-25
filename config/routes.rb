Rails.application.routes.draw do
  root to: "pages#index"

  controller :pages do
    get "news_all", action: "news_all"
    get "news_one", action: "news_one"
    get "about_us", action: "about_us"
    get "services", action: "services"
    get "scheme_all", action: "scheme_all"
    get "projects", action: "projects"
    get "projects_one", action: "projects_one"
    get "contact_us", action: "contact_us"
    get "price_plan", action: "price_plan"
  end

  match "*url", to: "application#render_not_found", via: [:get, :post, :path, :put, :update, :delete]
end