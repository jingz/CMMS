class CreatePermissions < ActiveRecord::Migration
  def self.up
    create_table :permissions do |t|
      t.string :name
      t.string :description
      t.string :created_by
      t.string :updated_by
      t.timestamps
    end
  end

  def self.down
    drop_table :permissions
  end
end
