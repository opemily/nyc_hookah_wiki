require "active_record"

ActiveRecord::Base.establish_connection(
    :adapter => 'sqlite3',
    :database => 'db/hookah.sqlite3'
)

Dir.glob("models/*.rb").each do |path|
    require_relative "../#{path}"
end