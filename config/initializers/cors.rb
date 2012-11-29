Payments::Application.config.middleware.use Rack::Cors do
  allow do
    origins 'redicegame.com'
    resource "*",
      :headers => ['Origin', 'Accept', 'Content-Type'],
      :methods => [:get, :post]
  end
end
