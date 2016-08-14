class CreateRides < ActiveRecord::Migration
  create_table :rides do |r|
    r.integer :user_id
    r.integer :attraction_id
  end
end
