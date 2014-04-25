# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
YashBlog::Application.initialize!
def debug_log *args
  #logger.debug "\e[42m#{msg}\e[0m"
  require 'pp'
  msg = args.inject(""){|r, x|r += x.pretty_inspect}.chomp
  puts "\e[42m#{msg}\e[0m"
end
