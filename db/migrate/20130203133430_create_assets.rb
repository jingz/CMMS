class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets do |t|

      t.string :asset_no, :null => false
      t.string :model
      t.string :name
      t.string :power
      t.string :dimension
      t.string :remark
      t.integer :priority_id # asset_priority fixed -> critical, production, non_production
      t.integer :status_id # asset_status fixed -> in_service, in_repaire, scrapped
      t.integer :parent_id # asset
      t.integer :type_id # asset_type
      t.integer :template_id # rcm_template, # TODO
      t.integer :category_id # asset_category fixed -> equipment, building, system, location
      t.integer :location_id # asset ; like the parent_id but should link to location asset
      t.decimal :weight
      t.integer :weight_uom_id # uom
      t.string :serial_no
      t.integer :owner_user_id # users
      t.date :start_date
      t.date :purchase_date 
      t.decimal :original_cost
      t.integer :manufacturer_id # manufacturer
      t.integer :vendor_id # vendor
      t.integer :upload_id # doc_upload # TODO Document Management
      t.date :warranty_start_date
      t.date :warranty_end_date
      t.decimal :maint_labor_hours
      t.decimal :maint_labor_cost
      t.decimal :maint_material_cost
      t.decimal :maint_cost
      t.boolean :rollup_cost
      t.integer :costcode_id # costcode # TODO
      t.integer :dept_id # dept
      t.integer :in_id # inventory # TODO Inventory Management
      t.integer :depreciation_type_id # depreciation_type fixed -> straight, other
      t.date :depreciation_start
      t.integer :depreciation_time_id # depreciation_time fixed -> Annually, Quarterly
      t.decimal :depreciation_rate
      t.text :description

      t.integer :updated_id # users
      t.integer :created_id # users
      t.timestamps
    end
  end

  def self.down
    drop_table :assets
  end
end
