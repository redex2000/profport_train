class Rack::Attack
  # Ограничение запросов по IP-адресу
  # Rack::Attack.blocklist('block ips') do |request|
  #   "127.0.0.1" == request.ip
  # end

  # Rack::Attack.throttle('request by ip', limit: 1, period: 1.minute) do |request|
  #   request.ip
  # end

end