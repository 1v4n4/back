Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [:get, :post, :patch, :put, :delete, :options, :head],
    credentials:true
  end

  # allow do
  #   origins 'https://1v4n4.github.io/beach/'
  #   resource '*', headers: :any, methods: [:get, :post, :patch, :put, :delete, :options, :head],
  #   credentials:true
  # end
end