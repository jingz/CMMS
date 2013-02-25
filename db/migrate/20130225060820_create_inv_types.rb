class CreateInvTypes < ActiveRecord::Migration
  def self.up
    create_table :inv_types do |t|
      t.string :name
      t.string :note
      t.integer :updated_id # users
      t.integer :created_id # users

      t.timestamps
    end
  end

  def self.down
    drop_table :inv_types
  end
end
