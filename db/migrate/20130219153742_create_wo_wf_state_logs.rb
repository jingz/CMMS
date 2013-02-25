class CreateWoWfStateLogs < ActiveRecord::Migration
  def self.up
    create_table :wo_wf_state_logs do |t|
      t.integer :workorder_id # workorder
      t.string :to_wf_state # workorder_workflow_state
      t.string :from_wf_state # workorder_workflow_state
      t.string :workflow_action # workorder_workflow_action
      t.integer :changed_by_id # users
      t.text :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :wo_wf_state_logs
  end
end
