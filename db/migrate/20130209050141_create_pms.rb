class CreatePms < ActiveRecord::Migration
  def self.up
    create_table :pms do |t|
      t.string :pm_no
      t.text :description
      t.integer :status_id # pm_status fixed -> Active, Inactive
      t.integer :asset_type_id # asset_type
      t.integer :rcm_action_id # rcm_action
      t.integer :category_id # wo_category fixed -> Emergency(breakdown), Corrective, Predictive, Preventive, Detective
      t.integer :priority_id # wo_priority fixed -> Safety Hazards, Safety Matters, Production Downtime, Normal Maintainence, Project
      t.integer :origin_id # wo_origin fixed -> Trouble Call, PM, Rework, Other
      t.integer :origin_user_id # users
      t.integer :assigned_to_id # users
      t.integer :assigned_team_id # team
      t.decimal :duration_hours
      t.integer :release_type_id # pm_release_type fixed -> Fix, Floating, Other
      t.integer :schedule_type_id # pm_schedule_type fixed -> By Time, By Meter, By Time and Meter, Other
      t.string :release_schedule
      t.decimal :labor_hours
      t.decimal :downtime_hours

      t.integer :updated_id # users
      t.integer :created_id # users
      t.timestamps
    end
  end

  def self.down
    drop_table :pms
  end
end
