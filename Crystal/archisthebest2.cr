require "http/server"

server = HTTP::Server.new do |context|
  context.response.content_type = "text/plain"
  context.response.print "Arch is the best!"
end 

address = server.bind_tcp 10050
puts "Listening on http://#{address}"
server.listen
