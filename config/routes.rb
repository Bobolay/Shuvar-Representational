Rails.application.routes.draw do
  root to: "pages#index"
  get "download_zip", to: "application#prepare_zip"
  get "downloads", to: "application#downloads"
  get "views", to: "application#views_index"
  get "views/*path", to: "application#show_view"

  controller :pages do
    get "news_all", action: "news_all"
    get "news_one", action: "news_one"
    get "events_all", action: "events_all"
    get "event_one", action: "event_one"
    get "about_us", action: "about_us"
    get "services", action: "services"
    get "scheme_all", action: "scheme_all"
    get "projects", action: "projects"
    get "projects_one", action: "projects_one"
    get "contact_us", action: "contact_us"
    get "price_plan", action: "price_plan"
    get "webcams", action: "webcams"
    get "workhours", action: "workhours"
    get "registration", action: "registration"
    get "account", action: "account"
    get "scheme_all", action: "scheme_all"
    get "terminal_1", action: "terminal_1"
    get "terminal_2", action: "terminal_2"
    get "terminal_3", action: "terminal_3"
    get "terminal_4", action: "terminal_4"
    get "terminal_5", action: "terminal_5"
    get "terminal_6", action: "terminal_6"
    get "not_found", action: "not_found"
    get "search", action: "search"
  end

  match "*url", to: "application#render_not_found", via: [:get, :post, :path, :put, :update, :delete]
end