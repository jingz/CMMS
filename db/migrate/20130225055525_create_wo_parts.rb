class CreateWoParts < ActiveRecord::Migration
  def self.up
    create_table :wo_parts do |t|
      t.integer :workorder_id # workorder
      t.integer :inventory_id # inventory
      t.string :note
      t.decimal :qty_used
      t.decimal :line_cost

      t.integer :updated_id # users
      t.integer :created_id # users

      t.timestamps
    end
  end

  def self.down
    drop_table :wo_parts
  end
end
