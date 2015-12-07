require_relative "../config"

# name the class after the action or transformation
# we want to apply to the database
class Lounge < ActiveRecord::Migration
  def up
    puts "apply this thing"
    create_table :lounges do |t|
      # all the column names and types go here
      # ids are made for us
      t.string(:name)
      t.string(:address)
      t.integer(:neighborhood_id)
      t.string(:photo)
      t.string(:hours)
      t.string(:style)
      t.string(:food)
      t.string(:alcohol)
      t.string(:music)
    end
  end

  def down
    puts "undo!"
    drop_table :lounges
  end
end

Lounge.migrate(ARGV[0])
