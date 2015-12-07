require_relative "config"
require_relative "migrations/create_boroughs.rb"
require_relative "migrations/create_lounges.rb"
require_relative "migrations/create_neighborhoods.rb"
require_relative "migrations/create_users.rb"

CreateBorough.migrate(ARGV[0])
CreateLounge.migrate(ARGV[0])
CreateNeighborhood.migrate(ARGV[0])
CreateUser.migrate(ARGV[0])
