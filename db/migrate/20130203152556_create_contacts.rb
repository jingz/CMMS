class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :full_name, :null => false
      t.string :job_title
      t.integer :type_id # contact_type fixed -> vendor, manufacturer, partner, tetant, other
      t.string :note
      t.string :phone_work
      t.string :phone_home
      t.string :phone_mobile
      t.string :email_work
      t.string :email_other
      # t.integer :im1_type_id # im_type
      # t.string :im1_id
      # t.integer :im2_type_id # im_type
      # t.string :im2_id
      t.string :fax
      t.string :company
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.integer :asset_id # asset

      t.integer :updated_id # users
      t.integer :created_id # users
      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
