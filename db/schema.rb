# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130415101022) do

  create_table "asset_types", :force => true do |t|
    t.string   "type"
    t.string   "note"
    t.integer  "updated_id"
    t.integer  "created_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assets", :force => true do |t|
    t.string   "asset_no",             :null => false
    t.string   "model"
    t.string   "name"
    t.string   "power"
    t.string   "dimension"
    t.string   "remark"
    t.integer  "priority_id"
    t.integer  "status_id"
    t.integer  "parent_id"
    t.integer  "type_id"
    t.integer  "template_id"
    t.integer  "category_id"
    t.integer  "location_id"
    t.decimal  "weight"
    t.integer  "weight_uom_id"
    t.string   "serial_no"
    t.integer  "owner_user_id"
    t.date     "start_date"
    t.date     "purchase_date"
    t.decimal  "original_cost"
    t.integer  "manufacturer_id"
    t.integer  "vendor_id"
    t.integer  "upload_id"
    t.date     "warranty_start_date"
    t.date     "warranty_end_date"
    t.decimal  "maint_labor_hours"
    t.decimal  "maint_labor_cost"
    t.decimal  "maint_material_cost"
    t.decimal  "maint_cost"
    t.boolean  "rollup_cost"
    t.integer  "costcode_id"
    t.integer  "dept_id"
    t.integer  "in_id"
    t.integer  "depreciation_type_id"
    t.date     "depreciation_start"
    t.integer  "depreciation_time_id"
    t.decimal  "depreciation_rate"
    t.text     "description"
    t.integer  "updated_id"
    t.integer  "created_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  create_table "contacts", :force => true do |t|
    t.string   "full_name",    :null => false
    t.string   "job_title"
    t.integer  "type_id"
    t.string   "note"
    t.string   "phone_work"
    t.string   "phone_home"
    t.string   "phone_mobile"
    t.string   "email_work"
    t.string   "email_other"
    t.string   "fax"
    t.string   "company"
    t.string   "street1"
    t.string   "street2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.integer  "asset_id"
    t.integer  "updated_id"
    t.integer  "created_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inv_trans", :force => true do |t|
    t.integer  "inventory_id"
    t.integer  "type_id"
    t.integer  "location_id"
    t.decimal  "qty"
    t.decimal  "unit_cost"
    t.integer  "costcode_id"
    t.integer  "checkout_type_id"
    t.integer  "checkout_to_id"
    t.integer  "receive_type_id"
    t.integer  "receive_from_id"
    t.decimal  "qty_available"
    t.decimal  "qty_orig"
    t.integer  "orig_loc_id"
    t.integer  "checkout_tran_id"
    t.decimal  "rent_duration"
    t.decimal  "rent_rate"
    t.decimal  "tran_total"
    t.string   "note"
    t.datetime "tran_time"
    t.integer  "tran_user_id"
    t.integer  "store_user_id"
    t.boolean  "voided"
    t.integer  "authorized_by_id"
    t.integer  "void_by_id"
    t.datetime "void_time"
    t.string   "void_note"
    t.integer  "new_tran_id"
    t.integer  "created_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inv_types", :force => true do |t|
    t.string   "name"
    t.string   "note"
    t.integer  "updated_id"
    t.integer  "created_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inventories", :force => true do |t|
    t.string   "inv_no"
    t.string   "note"
    t.integer  "type_id"
    t.integer  "category_id"
    t.integer  "stock_type_id"
    t.integer  "valuation_type_id"
    t.integer  "abc_id"
    t.datetime "abc_time"
    t.integer  "uom_id"
    t.decimal  "avg_unit_cost"
    t.integer  "rent_uom_id"
    t.decimal  "rent_rate"
    t.decimal  "qty_in_stock"
    t.decimal  "qty_on_order"
    t.decimal  "qty_reserved"
    t.decimal  "qty_to_order"
    t.integer  "order_gen_id"
    t.integer  "order_type_id"
    t.decimal  "min_level"
    t.decimal  "max_level"
    t.decimal  "reorder_point"
    t.decimal  "reorder_qty"
    t.integer  "owner_user_id"
    t.integer  "notification_id"
    t.integer  "costcode_id"
    t.text     "description"
    t.integer  "updated_id"
    t.integer  "created_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machines", :force => true do |t|
    t.string   "ref_no",              :limit => 20,                           :null => false
    t.integer  "ref_machine_type_id"
    t.string   "name",                :limit => 50
    t.string   "model",               :limit => 50
    t.string   "power",               :limit => 50
    t.string   "dimension",           :limit => 50
    t.integer  "weigth",              :limit => 2
    t.string   "supplier_company"
    t.date     "acquired_date",                     :default => '2013-01-19'
    t.date     "disposed_date"
    t.text     "remark"
    t.string   "status",              :limit => 10
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "maintenance_request_forms", :force => true do |t|
    t.integer  "machine_id"
    t.integer  "ref_type_id"
    t.integer  "response_user_id"
    t.integer  "request_user_id"
    t.string   "status"
    t.string   "pre_info"
    t.string   "analytic"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manufacturers", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "note"
    t.integer  "contact_id"
    t.integer  "updated_id"
    t.integer  "created_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissions", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissions_users", :id => false, :force => true do |t|
    t.integer  "permission_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pms", :force => true do |t|
    t.string   "pm_no"
    t.text     "description"
    t.integer  "status_id"
    t.integer  "asset_type_id"
    t.integer  "rcm_action_id"
    t.integer  "category_id"
    t.integer  "priority_id"
    t.integer  "origin_id"
    t.integer  "origin_user_id"
    t.integer  "assigned_to_id"
    t.integer  "assigned_team_id"
    t.decimal  "duration_hours"
    t.integer  "release_type_id"
    t.integer  "schedule_type_id"
    t.string   "release_schedule"
    t.decimal  "labor_hours"
    t.decimal  "downtime_hours"
    t.integer  "updated_id"
    t.integer  "created_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rcm_actions", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ref_machine_types", :force => true do |t|
    t.string   "name",        :limit => 50, :null => false
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ref_maintenance_statuses", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ref_maintenance_types", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requisitions", :force => true do |t|
    t.string   "req_no"
    t.text     "description"
    t.integer  "priority_id"
    t.integer  "status_id"
    t.integer  "req_on_po_id"
    t.integer  "source_id"
    t.integer  "state_id"
    t.date     "due_date"
    t.integer  "shipping_type_id"
    t.integer  "wo_id"
    t.integer  "request_user_id"
    t.datetime "request_at"
    t.decimal  "req_total"
    t.integer  "costcode_id"
    t.integer  "dept_id"
    t.integer  "next_user_id"
    t.string   "next_note"
    t.integer  "updated_id"
    t.integer  "created_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  create_table "uoms", :force => true do |t|
    t.string   "uom",        :null => false
    t.string   "note"
    t.integer  "updated_id"
    t.integer  "created_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "emp_no"
    t.string   "note"
    t.string   "job_title"
    t.integer  "team_id"
    t.integer  "supervisor_id"
    t.integer  "dept_id"
    t.integer  "costcode_id"
    t.integer  "req_approval_id"
    t.integer  "po_approval_id"
    t.integer  "craft_id"
    t.string   "phone_work"
    t.string   "phone_mobile"
    t.string   "email_other"
    t.date     "start_work_date"
    t.text     "address"
    t.string   "education_level_id"
    t.string   "id_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_permissions", :id => false, :force => true do |t|
    t.integer  "user_id"
    t.integer  "permission_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendors", :force => true do |t|
    t.string   "name",       :null => false
    t.integer  "status_id"
    t.string   "note"
    t.integer  "contact_id"
    t.string   "address"
    t.text     "comment"
    t.integer  "updated_id"
    t.integer  "created_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wo_parts", :force => true do |t|
    t.integer  "workorder_id"
    t.integer  "inventory_id"
    t.string   "note"
    t.decimal  "qty_used"
    t.decimal  "line_cost"
    t.integer  "updated_id"
    t.integer  "created_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wo_wf_state_logs", :force => true do |t|
    t.integer  "workorder_id"
    t.string   "to_wf_state"
    t.string   "from_wf_state"
    t.string   "workflow_action"
    t.integer  "changed_by_id"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workorders", :force => true do |t|
    t.string   "wo_no"
    t.string   "note"
    t.string   "asset_note"
    t.text     "description"
    t.integer  "asset_id"
    t.integer  "pm_id"
    t.integer  "category_id"
    t.integer  "wo_type_id"
    t.integer  "status_id"
    t.string   "workflow_state"
    t.string   "workflow_action"
    t.integer  "priority_id"
    t.integer  "resolution_id"
    t.integer  "duplicate_wo_id"
    t.integer  "rcm_action_id"
    t.integer  "parent_wo_id"
    t.integer  "origin_id"
    t.integer  "rework_wo_id"
    t.integer  "orig_contact_id"
    t.integer  "orig_user_id"
    t.datetime "orig_time"
    t.integer  "assigned_team_id"
    t.integer  "assigned_to_id"
    t.integer  "assigned_by_id"
    t.datetime "assigned_time"
    t.datetime "time_needed"
    t.datetime "planned_start_time"
    t.datetime "sched_start_time"
    t.integer  "sched_start_shift_id"
    t.datetime "actual_start_time"
    t.integer  "actual_start_shift_id"
    t.datetime "planned_finish_time"
    t.datetime "sched_finish_time"
    t.integer  "sched_finish_shift_id"
    t.datetime "actual_finish_time"
    t.integer  "actual_finish_shift_id"
    t.integer  "costcode_id"
    t.integer  "project_id"
    t.integer  "dept_id"
    t.decimal  "planned_labor_hours"
    t.decimal  "sched_labor_hours"
    t.decimal  "actual_labor_hours"
    t.decimal  "labor_cost"
    t.decimal  "material_cost"
    t.decimal  "total_cost"
    t.decimal  "planned_downtime_hours"
    t.decimal  "actual_downtime_hours"
    t.integer  "updated_id"
    t.integer  "created_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
