class CreateUoms < ActiveRecord::Migration
  def self.up
    create_table :uoms do |t|
      t.string :uom, :null => false
      t.string :note
      t.integer :updated_id # users
      t.integer :created_id # users
                  
      t.timestamps
    end
  end

  def self.down
    drop_table :uoms
  end
end
