class CreateRefMaintenanceStatuses < ActiveRecord::Migration
  def self.up
    create_table :ref_maintenance_statuses do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :ref_maintenance_statuses
  end
end
