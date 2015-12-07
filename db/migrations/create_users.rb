require_relative "../config"

# name the class after the action or transformation
# we want to apply to the database
class CreateUser < ActiveRecord::Migration
  def up
    puts "apply this thing"
    create_table :users do |t|
      # all the column names and types go here
      # ids are made for us
      t.string(:name)
    end
  end

  def down
    puts "undo!"
    drop_table :users
  end
end

