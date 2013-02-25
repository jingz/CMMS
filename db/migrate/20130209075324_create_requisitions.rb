class CreateRequisitions < ActiveRecord::Migration
  def self.up
    create_table :requisitions do |t|
      t.string :req_no
      t.text :description
      t.integer :priority_id # req_priority fixed -> Operation, Emergency, Safety, Other
      t.integer :status_id # req_status fixed -> New, Open, Pre-Approved, Approved, Voided
      t.integer :req_on_po_id # req_on_po
      t.integer :source_id # req_source fixed -> Other, Auto-Reorder, Workorder
      t.integer :state_id # req_state -> Open, Reopen, Closed
      t.date :due_date
      t.integer :shipping_type_id # shipping_type fixed -> Ground, Express
      t.integer :wo_id # workorder
      t.integer :request_user_id # users
      t.datetime :request_at
      t.decimal :req_total

      t.integer :costcode_id # costcode # TODO
      t.integer :dept_id # dept

      t.integer :next_user_id # users
      t.string :next_note

      t.integer :updated_id # users
      t.integer :created_id # users
      t.timestamps
    end
  end

  def self.down
    drop_table :requisitions
  end
end
