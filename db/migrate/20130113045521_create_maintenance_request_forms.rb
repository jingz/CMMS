class CreateMaintenanceRequestForms < ActiveRecord::Migration
  def self.up
    create_table :maintenance_request_forms do |t|
      t.references :machine
      t.references :ref_type
      t.references :response_user
      t.references :request_user
      t.string :status

      t.string :pre_info
      t.string :analytic

      t.string :requested_by
      t.string :responded_by
      t.string :approved_by

      t.timestamps
    end
  end

  def self.down
    drop_table :maintenance_request_forms
  end
end
