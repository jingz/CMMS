pm_meter
  t.integer :id
  t.integer :pm_asset_id # pm_asset
  t.integer :meter_id # asset_meter
  t.boolean :release_by_meter
  t.decimal :reading_released
  t.integer :rollover_count
  t.decimal :reading_interval
  t.boolean :copy_to_wo
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
wo_status_log
  t.integer :id
  t.integer :wo_id # workorder
  t.integer :to_status_id # wo_status
  t.integer :from_status_id # wo_status
  t.integer :changed_by_id # users
  t.datetime :created_time
  t.text :comment
asset_category
  t.integer :id
  t.boolean :fixed
rcm_function
  t.integer :id
  t.string :fn_name
  t.integer :template_id # rcm_template
  t.text :description
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
project_priority
  t.integer :id
  t.boolean :fixed
budget_status_log
  t.integer :id
  t.integer :budget_id # budget
  t.integer :to_state_id # budget_state
  t.integer :from_state_id # budget_state
  t.integer :changed_by_id # users
  t.datetime :created_time
  t.text :comment
workorder
  t.integer :id
  t.string :wo_no
  t.string :note
  t.text :description
  t.integer :asset_id # asset
  t.integer :pm_id # pm
  t.string :asset_note
  t.integer :category_id # wo_category
  t.integer :status_id # wo_status
  t.integer :priority_id # wo_priority
  t.integer :resolution_id # wo_resolution
  t.integer :duplicate_wo_id # workorder
  t.integer :rcm_action_id # rcm_action
  t.integer :parent_wo_id # workorder
  t.integer :origin_id # wo_origin
  t.integer :rework_wo_id # workorder
  t.integer :orig_contact_id # contact
  t.integer :orig_user_id # users
  t.datetime :orig_time
  t.integer :assigned_team_id # team
  t.integer :assigned_to_id # users
  t.integer :assigned_by_id # users
  t.datetime :assigned_time
  t.datetime :time_needed
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
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
wo_priority
  t.integer :id
  t.boolean :fixed
pm_safety
  t.integer :id
  t.integer :pm_id # pm
  t.integer :seq
  t.text :description
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
wo_pm_select
  t.integer :id
  t.boolean :fixed
dash_wo_orig_md
  t.integer :id
  t.string :counts
  t.datetime :modified_time
pm_downtime
  t.integer :id
  t.integer :pm_id # pm
  t.decimal :hours
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
in_tran
  t.integer :id
  t.integer :in_id # inventory
  t.integer :type_id # in_tran_type
  t.integer :location_id # in_location
  t.decimal :qty
  t.decimal :unit_cost
  t.integer :costcode_id # costcode
  t.integer :checkout_type_id # in_checkout_to
  t.integer :checkout_to_id
  t.integer :receive_type_id # in_receive_from
  t.integer :receive_from_id
  t.decimal :qty_available
  t.decimal :qty_orig
  t.integer :orig_loc_id # in_location
  t.integer :checkout_tran_id
  t.decimal :rent_duration
  t.decimal :rent_rate
  t.decimal :tran_total
  t.string :note
  t.datetime :tran_time
  t.integer :tran_user_id # users
  t.integer :store_user_id # users
  t.boolean :voided
  t.integer :authorized_by_id # users
  t.integer :void_by_id # users
  t.datetime :void_time
  t.string :void_note
  t.integer :new_tran_id
  t.datetime :created_time
  t.integer :created_id # users
shipping_term
  t.integer :id
  t.boolean :fixed
doc_attachment
  t.integer :id
  t.integer :doc_id # document
  t.integer :upload_id # doc_upload
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
doc_upload
  t.integer :id
  t.string :file_upload
  t.integer :access_id # doc_access_type
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
in_notification
  t.integer :id
  t.boolean :fixed
asset_priority
  t.integer :id
  t.boolean :fixed
budget
  t.integer :id
  t.integer :title_id # budget_title
  t.string :budget
  t.integer :state_id # budget_state
  t.date :start_date
  t.date :end_date
  t.decimal :budgeted
  t.decimal :app
  t.decimal :accounting
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
in_order_type
  t.integer :id
  t.boolean :fixed
po_status
  t.integer :id
  t.boolean :fixed
manufacturer
  t.integer :id
  t.string :manufacturer
  t.string :note
  t.integer :contact_id # contact
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
contact_type
  t.integer :id
  t.boolean :fixed
user_status
  t.integer :id
  t.boolean :fixed
in_order_gen
  t.integer :id
  t.boolean :fixed
wo_category
  t.integer :id
  t.boolean :fixed
budget_title
  t.integer :id
  t.string :title
  t.date :start_date
  t.date :end_date
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
in_seq
  t.integer :id
dept
  t.integer :id
  t.string :dept
  t.string :note
  t.integer :manager_id # users
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
asset_part
  t.integer :id
  t.integer :asset_id # asset
  t.integer :in_id # inventory
  t.integer :type_id # asset_part_type
  t.decimal :qty
  t.integer :uom_id # uom
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
in_vendor
  t.integer :id
  t.integer :in_id # inventory
  t.integer :vendor_id # vendor
  t.string :vendor_part_no
  t.boolean :is_primary
  t.integer :uom_id # uom
  t.decimal :unit_cost
  t.decimal :lead_time_days
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
in_valuation_type
  t.integer :id
  t.boolean :fixed
scheduler_job
  t.integer :id
  t.integer :task_id # scheduler_task
  t.string :note
  t.boolean :is_active
  t.integer :start_seq
  t.string :release_time
  t.string :release_day
  t.datetime :time_due
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
scheduler_task
  t.integer :id
  t.string :task
  t.string :note
  t.string :class_name
  t.string :class_path
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
vendor_contact
  t.integer :id
  t.integer :vendor_id # vendor
  t.integer :contact_id # contact
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
project_status
  t.integer :id
  t.boolean :fixed
requisition
  t.integer :id
  t.string :req_no
  t.text :description
  t.integer :priority_id # req_priority
  t.integer :status_id # req_status
  t.integer :req_on_po_id # req_on_po
  t.integer :source_id # req_source
  t.integer :state_id # req_state
  t.date :due_date
  t.integer :shipping_type_id # shipping_type
  t.integer :wo_id # workorder
  t.integer :request_user_id # users
  t.datetime :request_time
  t.decimal :req_total
  t.integer :costcode_id # costcode
  t.integer :dept_id # dept
  t.integer :next_user_id # users
  t.string :next_note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
req_item
  t.integer :id
  t.integer :req_id # requisition
  t.integer :in_id # inventory
  t.integer :vendor_id # vendor
  t.string :vendor_part_no
  t.decimal :unit_cost
  t.decimal :qty
  t.integer :uom_id # uom
  t.decimal :line_cost
  t.integer :po_id # po
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
wo_safety
  t.integer :id
  t.integer :wo_id # workorder
  t.integer :seq
  t.text :description
  t.boolean :followed
  t.integer :followed_by_id # users
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
downtime_cause
  t.integer :id
  t.boolean :fixed
doc_type
  t.integer :id
  t.string :type
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
wo_step
  t.integer :id
  t.integer :wo_id # workorder
  t.integer :seq
  t.text :description
  t.boolean :completed
  t.integer :completed_by_id # users
  t.datetime :completed_time
  t.integer :shift_id # shift
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
wo_planned_labor
  t.integer :id
  t.integer :wo_id # workorder
  t.integer :craft_id # craft
  t.decimal :hours
  t.integer :crew_size
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
asset_depreciation
  t.integer :id
  t.integer :asset_id # asset
  t.date :start_date
  t.date :end_date
  t.decimal :depreciation_rate
  t.decimal :start_value
  t.decimal :end_value
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
in_checkout_to
  t.integer :id
  t.boolean :fixed
req_priority
  t.integer :id
  t.boolean :fixed
training_certificate
  t.integer :id
  t.string :certificate
  t.text :description
  t.integer :days_valid
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
rcm_failure
  t.integer :id
  t.string :failure
  t.boolean :is_evident
  t.integer :function_id # rcm_function
  t.integer :template_id # rcm_template
  t.text :description
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
in_category
  t.integer :id
  t.boolean :fixed
in_receive_from
  t.integer :id
  t.boolean :fixed
sched_user
  t.integer :id
  t.integer :user_id # users
  t.date :sched_date
  t.integer :shift_id # shift
  t.decimal :total_hours
  t.decimal :sched_hours
  t.decimal :hours_sched
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
in_comment
  t.integer :id
  t.integer :in_id # inventory
  t.text :comment
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
in_type
  t.integer :id
  t.string :type
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
asset_comment
  t.integer :id
  t.integer :asset_id # asset
  t.text :comment
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
contact
  t.integer :id
  t.string :full_name
  t.string :job_title
  t.integer :type_id # contact_type
  t.string :note
  t.string :phone_work
  t.string :phone_home
  t.string :phone_mobile
  t.string :email_work
  t.string :email_other
  t.integer :im1_type_id # im_type
  t.string :im1_id
  t.integer :im2_type_id # im_type
  t.string :im2_id
  t.string :fax
  t.string :company
  t.string :street1
  t.string :street2
  t.string :city
  t.string :state
  t.string :zip
  t.string :country
  t.integer :asset_id # asset
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
in_doc
  t.integer :id
  t.integer :in_id # inventory
  t.integer :doc_id # document
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
dash_wo_orig_day
  t.integer :id
  t.string :counts
  t.datetime :modified_time
vendor
  t.integer :id
  t.string :vendor
  t.integer :tax_code_id # tax_code
  t.integer :status_id # vendor_status
  t.integer :owner_user_id # users
  t.string :note
  t.integer :contact_id # contact
  t.string :address
  t.text :comment
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
wo_doc
  t.integer :id
  t.integer :wo_id # workorder
  t.integer :seq
  t.integer :doc_id # document
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
uom_map
  t.integer :id
  t.integer :uom_src_id # uom
  t.integer :uom_dst_id # uom
  t.decimal :qty
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
meter_type
  t.integer :id
  t.string :type
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
wo_gen_status
  t.integer :id
  t.boolean :fixed
vendor_status
  t.integer :id
  t.boolean :fixed
in_reserved
  t.integer :id
  t.integer :in_id # inventory
  t.integer :wo_id # workorder
  t.decimal :qty
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
po_state
  t.integer :id
  t.boolean :fixed
wo_part
  t.integer :id
  t.integer :wo_id # workorder
  t.integer :in_id # inventory
  t.decimal :qty_used
  t.decimal :line_cost
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
semaphore
  t.integer :id
  t.datetime :expire_time
  t.datetime :created_time
  t.integer :created_id # users
rcm_pm_policy
  t.integer :id
  t.boolean :fixed
wo_sched_labor
  t.integer :id
  t.integer :wo_id # workorder
  t.integer :user_id # users
  t.datetime :start_time
  t.integer :shift_id # shift
  t.decimal :hours
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
in_audit
  t.integer :id
  t.integer :in_id # inventory
  t.integer :audit_user_id # users
  t.date :start_date
  t.date :end_date
  t.decimal :hours
  t.text :comment
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
document
  t.integer :id
  t.string :document
  t.text :content
  t.integer :type_id # doc_type
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
req_source
  t.integer :id
  t.boolean :fixed
wo_generation
  t.integer :id
  t.integer :status_id # wo_gen_status
  t.date :to_date
  t.integer :wo_count
  t.string :note
  t.datetime :modified_time
  t.datetime :created_time
  t.integer :created_id # users
recycle_bin
  t.integer :id
  t.integer :parent_id
  t.string :description
  t.string :table_name
  t.integer :rec_id
  t.text :value_deleted
  t.datetime :created_time
  t.integer :created_id # users
uom
  t.integer :id
  t.string :uom
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
sched_shutdown
  t.integer :id
  t.string :shutdown
  t.datetime :start_time
  t.datetime :end_time
  t.decimal :hours
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
in_location
  t.integer :id
  t.string :location
  t.integer :parent_id # in_location
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
pm_season
  t.integer :id
  t.integer :pm_asset_id # pm_asset
  t.date :start_date
  t.date :end_date
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
version_upgrade_log
  t.integer :id
  t.string :vid
  t.string :ver_note
  t.string :prev_vid
  t.string :prev_ver_note
  t.string :prev_props
  t.integer :status_id # version_status
  t.datetime :start_time
  t.datetime :end_time
  t.string :upgrade_note
  t.text :results
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
wo_origin
  t.integer :id
  t.boolean :fixed
in_abc
  t.integer :id
  t.boolean :fixed
contract_contact
  t.integer :id
  t.integer :contract_id # contract
  t.integer :contact_id # contact
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
pm_labor
  t.integer :id
  t.integer :pm_id # pm
  t.integer :craft_id # craft
  t.decimal :hours
  t.integer :crew_size
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
contract_type
  t.integer :id
  t.boolean :fixed
pm_asset
  t.integer :id
  t.integer :pm_id # pm
  t.integer :asset_id # asset
  t.date :last_released
  t.date :last_closed
  t.date :next_due_date
  t.integer :release_count
  t.integer :costcode_id # costcode
  t.integer :dept_id # dept
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
tax_rate
  t.integer :id
  t.integer :tax_code_id # tax_code
  t.decimal :tax_rate
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
inspection
  t.integer :id
  t.string :inspection
  t.integer :type_id # ins_type
  t.integer :inspect_contact_id # contact
  t.integer :inspect_user_id # users
  t.integer :owner_user_id # users
  t.datetime :start_time
  t.datetime :end_time
  t.text :comment
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
pm_doc
  t.integer :id
  t.integer :pm_id # pm
  t.integer :seq
  t.integer :doc_id # document
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
job_role
  t.integer :id
  t.boolean :eam_staff
  t.boolean :fixed
wo_planned_tool
  t.integer :id
  t.integer :wo_id # workorder
  t.integer :in_id # inventory
  t.decimal :qty
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
shift
  t.integer :id
  t.time :start_time
  t.time :end_time
  t.decimal :total_hours
  t.decimal :sched_hours
  t.decimal :other_hours
  t.boolean :fixed
wo_labor
  t.integer :id
  t.integer :wo_id # workorder
  t.integer :user_id # users
  t.integer :time_type_id # wo_time_type
  t.datetime :start_time
  t.integer :shift_id # shift
  t.integer :craft_id # craft
  t.decimal :hours
  t.decimal :ot_hours
  t.decimal :rate
  t.decimal :ot_factor
  t.decimal :line_cost
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
po_seq
  t.integer :id
shipping_type
  t.integer :id
  t.boolean :fixed
version_status
  t.integer :id
  t.boolean :fixed
asset_seq
  t.integer :id
rcm_consequence
  t.integer :id
  t.integer :failure_id # rcm_failure
  t.string :consequence
  t.integer :type_id # rcm_consequence_type
  t.integer :pm_policy_id # rcm_pm_policy
  t.text :description
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
pm_schedule_type
  t.integer :id
  t.boolean :fixed
pm_comment
  t.integer :id
  t.integer :pm_id # pm
  t.text :comment
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
asset_downtime
  t.integer :id
  t.integer :asset_id # asset
  t.integer :downtime_type_id # downtime_type
  t.integer :downtime_cause_id # downtime_cause
  t.datetime :start_time
  t.integer :shift_id # shift
  t.datetime :end_time
  t.decimal :hours
  t.integer :wo_id # workorder
  t.integer :reported_by_id # users
  t.datetime :reported_time
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
po_item
  t.integer :id
  t.integer :line_no
  t.integer :po_id # po
  t.integer :in_id # inventory
  t.string :vendor_part_no
  t.string :note
  t.decimal :unit_cost
  t.decimal :qty
  t.decimal :qty_received
  t.integer :uom_id # uom
  t.date :due_date
  t.decimal :line_cost
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
pm_step
  t.integer :id
  t.integer :pm_id # pm
  t.integer :seq
  t.text :description
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
wo_semaphore
  t.integer :id
  t.datetime :expiration
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
po
  t.integer :id
  t.string :po_no
  t.integer :status_id # po_status
  t.integer :state_id # po_state
  t.integer :buyer_id # users
  t.string :buyer_name
  t.string :buyer_phone
  t.date :po_date
  t.integer :next_user_id # users
  t.string :next_note
  t.integer :vendor_id # vendor
  t.string :vendor_addr
  t.integer :vendor_contact_id # contact
  t.string :vendor_contact_phone
  t.integer :payment_term_id # payment_term
  t.integer :shipping_type_id # shipping_type
  t.integer :shipping_term_id # shipping_term
  t.integer :shipping_addr_id # po_address
  t.integer :billing_addr_id # po_address
  t.decimal :po_item_total
  t.decimal :tax_rate_total
  t.decimal :tax_charge
  t.decimal :total_charge
  t.text :comment
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
depreciation_type
  t.integer :id
  t.boolean :fixed
wo_attachment
  t.integer :id
  t.integer :wo_id # workorder
  t.string :file_url
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
training
  t.integer :id
  t.string :training
  t.integer :course_id # training_course
  t.integer :instructor_user_id # users
  t.integer :instructor_contact_id # contact
  t.datetime :start_time
  t.datetime :end_time
  t.integer :certificate_id # training_certificate
  t.text :description
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
pm_dependency
  t.integer :id
  t.integer :pm_id # pm
  t.integer :child_pm_id # pm
  t.integer :type_id # pm_dependency_type
  t.integer :scope_id # pm_dependency_scope
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
acl_group
  t.integer :id
  t.string :acl_group
  t.integer :parent_group_id # acl_group
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
po_approval_level
  t.integer :id
  t.decimal :amount
  t.boolean :fixed
req_seq
  t.integer :id
pm_tool
  t.integer :id
  t.integer :pm_id # pm
  t.integer :in_id # inventory
  t.decimal :qty
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
contract
  t.integer :id
  t.string :contract
  t.integer :vendor_id # vendor
  t.string :note
  t.integer :type_id # contract_type
  t.integer :status_id # contract_status
  t.integer :contact_id # contact
  t.integer :owner_user_id # users
  t.date :start_date
  t.date :end_date
  t.text :comment
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
doc_access_type
  t.integer :id
  t.boolean :fixed
wo_time_type
  t.integer :id
  t.boolean :fixed
asset_meter
  t.integer :id
  t.integer :asset_id # asset
  t.string :meter_no
  t.integer :type_id # meter_type
  t.integer :reading_uom_id # uom
  t.decimal :reading
  t.boolean :is_rollover
  t.datetime :time_taken
  t.integer :rollup_type_id # meter_rollup_type
  t.decimal :rollover_reading
  t.integer :rollover_count
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
ins_citation
  t.integer :id
  t.string :citation
  t.integer :inspection_id # inspection
  t.integer :severity_id # ins_citation_severity
  t.text :comment
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
downtime_unit_cost
  t.integer :id
  t.integer :asset_id # asset
  t.integer :downtime_type_id # downtime_type
  t.decimal :hourly_rate
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
users
  t.integer :id
  t.string :username
  t.integer :status_id # user_status
  t.string :password
  t.integer :user_type_id # user_type
  t.string :emp_no
  t.integer :contractor_id # vendor
  t.integer :job_role_id # job_role
  t.boolean :login_allowed
  t.string :full_name
  t.string :job_title
  t.string :note
  t.integer :acl_group_id # acl_group
  t.integer :admin_type_id # search_admin
  t.integer :team_id # team
  t.integer :supervisor_id # users
  t.integer :dept_id # dept
  t.integer :costcode_id # costcode
  t.integer :req_approval_id # req_approval_level
  t.integer :po_approval_id # po_approval_level
  t.integer :craft_id # craft
  t.string :phone_work
  t.string :phone_home
  t.string :phone_mobile
  t.string :email_work
  t.string :email_other
  t.integer :im1_type_id # im_type
  t.string :im1_id
  t.integer :im2_type_id # im_type
  t.string :im2_id
  t.string :fax
  t.string :company
  t.string :street1
  t.string :street2
  t.string :city
  t.string :state
  t.string :zip
  t.string :country
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
wo_meter
  t.integer :id
  t.integer :wo_id # workorder
  t.integer :meter_id # asset_meter
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
user_type
  t.integer :id
  t.boolean :fixed
wo_comment
  t.integer :id
  t.integer :wo_id # workorder
  t.text :comment
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
scheduler_job_log
  t.integer :id
  t.integer :job_id # scheduler_job
  t.datetime :start_time
  t.datetime :end_time
  t.decimal :time_taken
  t.text :results
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
meter_rollup_type
  t.integer :id
  t.boolean :fixed
in_tran_worksheet
  t.integer :id
  t.integer :in_tran_id
  t.integer :src_tran_id
  t.decimal :qty
  t.decimal :unit_cost
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
downtime_type
  t.integer :id
  t.boolean :fixed
training_status
  t.integer :id
  t.boolean :fixed
asset_type
  t.integer :id
  t.string :type
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
project
  t.integer :id
  t.string :project_no
  t.integer :parent_id # project
  t.string :note
  t.integer :status_id # project_status
  t.integer :priority_id # project_priority
  t.integer :type_id # project_type
  t.integer :owner_user_id # users
  t.datetime :sched_start_time
  t.datetime :sched_end_time
  t.datetime :actual_start_time
  t.datetime :actual_end_time
  t.decimal :sched_hours
  t.decimal :actual_hours
  t.decimal :percent_done
  t.integer :dept_id # dept
  t.integer :costcode_id # costcode
  t.text :comment
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
pm_audit
  t.integer :id
  t.integer :pm_id # pm
  t.integer :audit_user_id # users
  t.date :start_date
  t.date :end_date
  t.decimal :hours
  t.text :comment
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
pm_status
  t.integer :id
  t.boolean :fixed
rcm_cause_type
  t.integer :id
  t.boolean :fixed
rcm_consequence_type
  t.integer :id
  t.boolean :fixed
budget_state
  t.integer :id
  t.boolean :fixed
asset_contract
  t.integer :id
  t.integer :asset_id # asset
  t.integer :contract_id # contract
  t.string :note
  t.integer :status_id # contract_status
  t.date :start_date
  t.date :end_date
  t.text :comment
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
wo_tool
  t.integer :id
  t.integer :wo_id # workorder
  t.integer :in_id # inventory
  t.decimal :qty_checkout
  t.decimal :qty_return
  t.decimal :line_cost
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
pm_dependency_scope
  t.integer :id
  t.boolean :fixed
pm_release_type
  t.integer :id
  t.boolean :fixed
req_on_po
  t.integer :id
  t.boolean :fixed
rcm_action_part
  t.integer :id
  t.integer :action_id # rcm_action
  t.integer :in_id # inventory
  t.decimal :qty
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
ins_citation_severity
  t.integer :id
  t.boolean :fixed
req_approval_level
  t.integer :id
  t.decimal :amount
  t.boolean :fixed
asset
  t.integer :id
  t.string :asset_no
  t.string :note
  t.integer :priority_id # asset_priority
  t.integer :status_id # asset_status
  t.integer :parent_id # asset
  t.integer :type_id # asset_type
  t.integer :template_id # rcm_template
  t.integer :category_id # asset_category
  t.integer :location_id # asset
  t.decimal :weight
  t.integer :weight_uom_id # uom
  t.string :serial_no
  t.integer :owner_user_id # users
  t.date :start_date
  t.date :purchase_date
  t.decimal :original_cost
  t.integer :manufacturer_id # manufacturer
  t.integer :vendor_id # vendor
  t.integer :upload_id # doc_upload
  t.date :warranty_start_date
  t.date :warranty_end_date
  t.decimal :maint_labor_hours
  t.decimal :maint_labor_cost
  t.decimal :maint_material_cost
  t.decimal :maint_cost
  t.boolean :rollup_cost
  t.integer :costcode_id # costcode
  t.integer :dept_id # dept
  t.integer :in_id # inventory
  t.integer :depreciation_type_id # depreciation_type
  t.date :depreciation_start
  t.integer :depreciation_time_id # depreciation_time
  t.decimal :depreciation_rate
  t.text :description
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
rcm_template
  t.integer :id
  t.string :template
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
meter_transaction
  t.integer :id
  t.integer :meter_id # asset_meter
  t.integer :read_by_id # users
  t.datetime :time_taken
  t.decimal :reading
  t.boolean :is_rollover
  t.integer :wo_id # workorder
  t.string :note
  t.datetime :created_time
  t.integer :created_id # users
po_address
  t.integer :id
  t.string :address
  t.integer :type_id # po_address_type
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
payment_term
  t.integer :id
  t.boolean :fixed
req_status_log
  t.integer :id
  t.integer :req_id # requisition
  t.integer :from_status_id # req_status
  t.integer :to_status_id # req_status
  t.integer :from_state_id # req_state
  t.integer :to_state_id # req_state
  t.integer :changed_by_id # users
  t.datetime :created_time
  t.text :comment
rcm_action
  t.integer :id
  t.integer :failure_id # rcm_failure
  t.string :cause
  t.string :action
  t.integer :cause_type_id # rcm_cause_type
  t.text :description
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
depreciation_time
  t.integer :id
  t.integer :duration_days
  t.boolean :fixed
training_course_type
  t.integer :id
  t.string :type
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
ins_type
  t.integer :id
  t.boolean :fixed
version
  t.integer :id
  t.string :vid
  t.string :note
  t.string :props
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
training_user
  t.integer :id
  t.integer :training_id # training
  t.integer :user_id # users
  t.integer :status_id # training_status
  t.text :comment
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
pm_dependency_type
  t.integer :id
  t.boolean :fixed
search_admin
  t.integer :id
  t.boolean :fixed
in_stock
  t.integer :id
  t.integer :in_id # inventory
  t.integer :location_id # in_location
  t.decimal :qty
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
wo_planned_downtime
  t.integer :id
  t.integer :wo_id # workorder
  t.decimal :hours
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
craft
  t.integer :id
  t.string :craft
  t.string :note
  t.decimal :rate
  t.decimal :ot_factor
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
im_type
  t.integer :id
  t.boolean :fixed
project_type
  t.integer :id
  t.string :type
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
training_course
  t.integer :id
  t.string :course
  t.text :description
  t.integer :type_id # training_course_type
  t.decimal :hours
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
wo_resolution
  t.integer :id
  t.boolean :fixed
pm
  t.integer :id
  t.string :pm_no
  t.text :description
  t.integer :status_id # pm_status
  t.integer :asset_type_id # asset_type
  t.integer :rcm_action_id # rcm_action
  t.integer :category_id # wo_category
  t.integer :priority_id # wo_priority
  t.integer :origin_id # wo_origin
  t.integer :origin_user_id # users
  t.integer :assigned_to_id # users
  t.integer :assigned_team_id # team
  t.decimal :duration_hours
  t.integer :release_type_id # pm_release_type
  t.integer :schedule_type_id # pm_schedule_type
  t.string :release_schedule
  t.decimal :labor_hours
  t.decimal :downtime_hours
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
inventory
  t.integer :id
  t.string :in_no
  t.string :note
  t.integer :type_id # in_type
  t.integer :category_id # in_category
  t.integer :stock_type_id # in_stock_type
  t.integer :valuation_type_id # in_valuation_type
  t.integer :abc_id # in_abc
  t.datetime :abc_time
  t.integer :uom_id # uom
  t.decimal :avg_unit_cost
  t.integer :rent_uom_id # uom
  t.decimal :rent_rate
  t.decimal :qty_in_stock
  t.decimal :qty_on_order
  t.decimal :qty_reserved
  t.decimal :qty_to_order
  t.integer :order_gen_id # in_order_gen
  t.integer :order_type_id # in_order_type
  t.decimal :min_level
  t.decimal :max_level
  t.decimal :reorder_point
  t.decimal :reorder_qty
  t.integer :owner_user_id # users
  t.integer :notification_id # in_notification
  t.integer :costcode_id # costcode
  t.text :description
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
locale
  t.integer :id
  t.boolean :fixed
asset_service_log
  t.integer :id
  t.integer :asset_id # asset
  t.integer :from_status_id # asset_status
  t.integer :to_status_id # asset_status
  t.integer :from_location_id # asset
  t.integer :to_location_id # asset
  t.integer :from_parent_id # asset
  t.integer :to_parent_id # asset
  t.integer :from_owner_id # users
  t.integer :to_owner_id # users
  t.integer :changed_by_id # users
  t.datetime :created_time
  t.text :comment
wo_planned_part
  t.integer :id
  t.integer :wo_id # workorder
  t.integer :in_id # inventory
  t.decimal :qty
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
in_stock_type
  t.integer :id
  t.boolean :fixed
in_tran_type
  t.integer :id
  t.boolean :fixed
wo_status
  t.integer :id
  t.boolean :fixed
wo_seq
  t.integer :id
contract_doc
  t.integer :id
  t.integer :contract_id # contract
  t.integer :seq
  t.integer :doc_id # document
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
asset_part_type
  t.integer :id
  t.boolean :fixed
tax_code
  t.integer :id
  t.string :tax_code
  t.decimal :tax_rate_total
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
po_address_type
  t.integer :id
  t.boolean :fixed
pm_part
  t.integer :id
  t.integer :pm_id # pm
  t.integer :in_id # inventory
  t.decimal :qty
  t.string :note
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
po_status_log
  t.integer :id
  t.integer :po_id # po
  t.integer :from_status_id # po_status
  t.integer :to_status_id # po_status
  t.integer :from_state_id # po_state
  t.integer :to_state_id # po_state
  t.integer :changed_by_id # users
  t.datetime :created_time
  t.text :comment
team
  t.integer :id
  t.string :team
  t.string :note
  t.integer :lead_id # users
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
req_state
  t.integer :id
  t.boolean :fixed
asset_status
  t.integer :id
  t.boolean :fixed
costcode
  t.integer :id
  t.string :costcode
  t.string :note
  t.integer :dept_id # dept
  t.integer :parent_id # costcode
  t.boolean :rollup_cost
  t.integer :cost_type_id # cost_type
  t.datetime :modified_time
  t.integer :modified_id # users
  t.datetime :created_time
  t.integer :created_id # users
contract_status
  t.integer :id
  t.boolean :fixed
cost_type
  t.integer :id
  t.boolean :fixed
req_status
  t.integer :id
  t.boolean :fixed
