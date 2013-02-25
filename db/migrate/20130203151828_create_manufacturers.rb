class CreateManufacturers < ActiveRecord::Migration
  def self.up
    create_table :manufacturers do |t|
      t.string :name, :null => false
      t.string :note
      t.integer :contact_id # contact
      t.integer :updated_id # users
      t.integer :created_id # users

      t.timestamps
    end
  end

  def self.down
    drop_table :manufacturers
  end
end
