require_relative "db_config"
require_relative "migrations/boroughs.rb"
require_relative "migrations/lounges.rb"
require_relative "migrations/neighborhoods.rb"
require_relative "migrations/users.rb"

Borough.migrate(ARGV[0])
Lounge.migrate(ARGV[0])
Neighborhood.migrate(ARGV[0])
User.migrate(ARGV[0])
