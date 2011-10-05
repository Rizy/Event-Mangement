class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :name
      t.text :description
      t.datetime :date
      t.integer :user_id
      t.string :location

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
