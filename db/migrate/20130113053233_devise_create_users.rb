class DeviseCreateUsers < ActiveRecord::Migration
  def self.up
    create_table(:users) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

      # t.encryptable
      # t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable

      t.string :firstname
      t.string :lastname

      t.string :emp_no
      t.string :note
      t.string :job_title
      t.integer :team_id # ?
      t.integer :supervisor_id
      t.integer :dept_id
      t.integer :costcode_id # ?
      t.integer :req_approval_id # ?
      t.integer :po_approval_id # ?
      t.integer :craft_id # ?
      t.string :phone_work
      t.string :phone_mobile
      t.string :email_other
      t.date :start_work_date
      t.text :address
      t.string :education_level_id # education_level_id
      t.string :id_no # ID Card

      # t.integer :im1_type_id # im_type
      # t.string :im1_id
      # t.integer :im2_type_id # im_type
      # t.string :im2_id
      # t.string :fax
      # t.string :company
      # t.string :street1
      # t.string :street2
      # t.string :city
      # t.string :state
      # t.string :zip
      # t.string :country
      
      t.timestamps
    end

    add_index :users, :email,                :unique => true
    add_index :users, :reset_password_token, :unique => true
    # add_index :users, :confirmation_token,   :unique => true
    # add_index :users, :unlock_token,         :unique => true
    # add_index :users, :authentication_token, :unique => true
  end

  def self.down
    drop_table :users
  end
end
