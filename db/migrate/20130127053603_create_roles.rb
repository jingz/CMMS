class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.string :name

      t.timestamps
    end

    create_table :roles_users, :id => false do |t|
      t.references :user, :role
    end

  end

  def self.down
    drop_table :roles
    drop_table :roles_users
  end
end
