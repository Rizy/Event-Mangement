class CreateInvitations < ActiveRecord::Migration
  def self.up
    create_table :invitations do |t|
      t.string :event_id
      t.string :user_email
      t.integer :status
      t.string :code

      t.timestamps
    end
  end

  def self.down
    drop_table :invitations
  end
end
