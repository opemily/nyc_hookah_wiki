require_relative "../config"

# name the class after the action or transformation
# we want to apply to the database
class CreateNeighborhoods < ActiveRecord::Migration
  def up
    puts "apply this thing"
    create_table :neighborhoods do |t|
      # all the column names and types go here
      # ids are made for us
      t.string(:name)
      t.integer(:borough_id)
    end
  end

  def down
    puts "undo!"
    drop_table :neighborhoods
  end
end
