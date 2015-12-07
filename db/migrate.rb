require_relative "config"
require_relative "migrations/create_boroughs.rb"
require_relative "migrations/create_lounges.rb"
require_relative "migrations/create_neighborhoods.rb"
require_relative "migrations/create_users.rb"

CreateBoroughs.migrate(ARGV[0])
CreateLounges.migrate(ARGV[0])
CreateNeighborhoods.migrate(ARGV[0])
CreateUsers.migrate(ARGV[0])
