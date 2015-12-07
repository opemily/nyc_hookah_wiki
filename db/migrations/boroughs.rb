require_relative "../config"

# name the class after the action or transformation
# we want to apply to the database
class Borough < ActiveRecord::Migration
  def up
    puts "apply this thing"
    create_table :boroughs do |t|
      # all the column names and types go here
      # ids are made for us
      t.string(:name)
      t.string(:img_url)
    end
  end

  def down
    puts "undo!"
    drop_table :boroughs
  end
end

Borough.migrate(ARGV[0])
