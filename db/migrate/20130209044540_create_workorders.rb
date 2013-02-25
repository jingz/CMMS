class CreateWorkorders < ActiveRecord::Migration
  def self.up
    create_table :workorders do |t|
      t.string :wo_no
      t.string :note
      t.string :asset_note
      t.text :description
      t.integer :asset_id # asset
      t.integer :pm_id # pm
      t.integer :category_id # wo_category fixed -> Emergency (breakdown), Corrective, Predictive, Preventive, Detective
      t.integer :wo_type_id # fixed
      t.integer :status_id # wo_status fixed -> New , Open, Sheduled, Wait For Material, Inprogress, Completed, Reopend, Accepted, Closed
      t.string :workflow_state 
      t.string :workflow_action
      t.integer :priority_id # wo_priority fixed -> Safety Hazards, Safety Matters, Production Downtime, Normal Maintenance
      t.integer :resolution_id # wo_resolution fixed -> Open, Resolved, Do Not Fix, Delayed, Duplicate
      t.integer :duplicate_wo_id # workorder
      t.integer :rcm_action_id # rcm_action # TODO
      t.integer :parent_wo_id # workorder
      t.integer :origin_id # wo_origin fixed -> Trouble Call, PM, Rework, Other
      t.integer :rework_wo_id # workorder
      t.integer :orig_contact_id # contact # TODO
      t.integer :orig_user_id # users
      t.datetime :orig_time

      t.integer :assigned_team_id # team # TODO
      t.integer :assigned_to_id # users
      t.integer :assigned_by_id # users
      t.datetime :assigned_time
      t.datetime :time_needed

      # TODO
      t.datetime :planned_start_time
      t.datetime :sched_start_time
      t.integer :sched_start_shift_id # shift
      t.datetime :actual_start_time
      t.integer :actual_start_shift_id # shift
      t.datetime :planned_finish_time
      t.datetime :sched_finish_time
      t.integer :sched_finish_shift_id # shift
      t.datetime :actual_finish_time
      t.integer :actual_finish_shift_id # shift

      # TODO
      t.integer :costcode_id # costcode
      t.integer :project_id # project
      t.integer :dept_id # dept

      t.decimal :planned_labor_hours
      t.decimal :sched_labor_hours
      t.decimal :actual_labor_hours
      t.decimal :labor_cost
      t.decimal :material_cost
      t.decimal :total_cost
      t.decimal :planned_downtime_hours
      t.decimal :actual_downtime_hours

      t.integer :updated_id # users
      t.integer :created_id # users
      t.timestamps
    end
  end

  def self.down
    drop_table :workorders
  end
end
