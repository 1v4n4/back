if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_auth", domain: "https://1v4n4.github.io/beach/"
  else
    Rails.application.config.session_store :cookie_store, key: "_backend"

  end