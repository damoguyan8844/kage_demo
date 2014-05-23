require 'webrick'

srv = WEBrick::HTTPServer.new(
  DocumentRoot: './',
  Port: 5678
)

srv.mount('/', WEBrick::HTTPServlet::CGIHandler,  File.join(__dir__, 'cgi', 'app.rb'))
Signal.trap(:INT){ srv.shutdown}
srv.start
