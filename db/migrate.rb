require_relative "db/config"
require_relative "db/migrations/boroughs.rb"
require_relative "db/migrations/lounges.rb"
require_relative "db/migrations/neighborhoods.rb"
require_relative "db/migrations/users.rb"

Borough.migrate(ARGV[0])
Lounge.migrate(ARGV[0])
Neighborhood.migrate(ARGV[0])
User.migrate(ARGV[0])
