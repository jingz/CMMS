class CreatePermissionsUsers < ActiveRecord::Migration
  def self.up
    create_table :permissions_users, :id => false do |t|
    	t.integer :permission_id
    	t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :permissions_users
  end
end
