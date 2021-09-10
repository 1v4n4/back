if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_auth", domain: "my-app.heroku.com"
  else
    Rails.application.config.session_store :cookie_store, key: "_backend"

  end