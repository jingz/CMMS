class CreateInventories < ActiveRecord::Migration
  def self.up
    create_table :inventories do |t|
      t.string :inv_no
      t.string :note
      t.integer :type_id        # in_type
      t.integer :category_id    # in_category fixed -> part, tool
      t.integer :stock_type_id  # in_stock_type fixed -> stock, non-stock, other
      t.integer :valuation_type_id # in_valuation_type fixed -> Average Cost
      t.integer :abc_id         # in_abc fixed -> A B C
      t.datetime :abc_time
      t.integer :uom_id         # uom
      t.decimal :avg_unit_cost
      t.integer :rent_uom_id    # uom
      t.decimal :rent_rate # TODO
      t.decimal :qty_in_stock

      t.decimal :qty_on_order
      t.decimal :qty_reserved
      t.decimal :qty_to_order
      t.integer :order_gen_id   # in_order_gen
      t.integer :order_type_id  # in_order_type
      t.decimal :min_level
      t.decimal :max_level
      t.decimal :reorder_point
      t.decimal :reorder_qty
      t.integer :owner_user_id   # users
      t.integer :notification_id # in_notification # TODO mail
      t.integer :costcode_id     # costcode

      t.text :description
      t.integer :updated_id     # users
      t.integer :created_id      # users

      t.timestamps
    end
  end

  def self.down
    drop_table :inventories
  end
end
