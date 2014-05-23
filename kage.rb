require 'kage'
require 'pp'

Kage::ProxyServer.start do |server|
  server.port = 48080

  server.add_master_backend(:cgi, 'localhost', 5678)
  server.add_backend(:sinatra, 'localhost', 5200)

  server.client_timeout = 15
  server.backend_timeout = 10


  server.on_backends_finished do |backends, requests, responses|
    p responses[:cgi][:data], responses[:sinatra][:data]
  end
end

