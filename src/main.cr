require "http/server"

port = ENV["PORT"] ||= "5000"
powered_by = ENV["POWERED_BY"] ||= "Deis"

server = HTTP::Server.new(port.to_i) do |context|
  context.response.content_type = "text/plain"
  context.response.print "Powered by #{powered_by}\n"
end

puts "Listening on http://0.0.0.0:#{port}"
server.listen
