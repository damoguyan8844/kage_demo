#!/usr/bin/env ruby
require 'cgi'

cgi = CGI.new

cgi.out("type" => "text/html", "charset" => "UTF-8") do
  "Hello. I'm a CGI"
end
