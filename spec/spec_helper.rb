require_relative "../lib/blackjack.rb"
RSpec.configure do |config|
  
end

# def with_stdin
#   stdin = $stdin
#   $stdin, write = IO.pipe
#   yield write
# ensure
#   write.close
#   $stdin = stdin
# end