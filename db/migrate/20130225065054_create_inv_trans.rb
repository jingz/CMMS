class CreateInvTrans < ActiveRecord::Migration
  def self.up
    create_table :inv_trans do |t|
      t.integer :inventory_id # inventory
      t.integer :type_id # in_tran_type fixed -> checkout, return, move, receiving, physical count
      t.integer :location_id # in_location
      t.decimal :qty
      t.decimal :unit_cost
      t.integer :costcode_id # costcode
      t.integer :checkout_type_id # in_checkout_to # TODO
      t.integer :checkout_to_id
      t.integer :receive_type_id # in_receive_from # TODO
      t.integer :receive_from_id # TODO
      t.decimal :qty_available
      t.decimal :qty_orig
      t.integer :orig_loc_id # in_location # TODO
      t.integer :checkout_tran_id
      t.decimal :rent_duration
      t.decimal :rent_rate
      t.decimal :tran_total
      t.string :note
      t.datetime :tran_time
      t.integer :tran_user_id # users
      t.integer :store_user_id # users
      t.boolean :voided
      t.integer :authorized_by_id # users
      t.integer :void_by_id # users
      t.datetime :void_time
      t.string :void_note
      t.integer :new_tran_id

      t.integer :created_id # users
      t.timestamps
    end
  end

  def self.down
    drop_table :inv_trans
  end
end
