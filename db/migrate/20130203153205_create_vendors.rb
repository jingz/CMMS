class CreateVendors < ActiveRecord::Migration
  def self.up
    create_table :vendors do |t|
      t.string :name, :null => false 
      t.integer :status_id # vendor_status -> active, in_active
      # t.integer :tax_code_id # tax_code
      # t.integer :owner_user_id # users
      t.string :note
      t.integer :contact_id # contact
      t.string :address
      t.text :comment
      t.integer :updated_id # users
      t.integer :created_id # users

      t.timestamps
    end
  end

  def self.down
    drop_table :vendors
  end
end
