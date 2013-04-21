# ecoding: utf-8
Permission.destroy_all
Permission.create!([
  {
    :name => "allow_importing_spare_part",
    :description => "Allow Importing Spare Part",
    :created_by => "Seed",
    :updated_by => "Seed"
  },
  {
    :name => "allow_withdraw_spare_part",
    :description => "Allow Withdraw Spare Part",
    :created_by => "Seed",
    :updated_by => "Seed"
  },
  {
    :name => "allow_work_request",
    :description => "Allow Work Request",
    :created_by => "Seed",
    :updated_by => "Seed"
  },
  {
    :name => "allow_work_update",
    :description => "Allow Work Update",
    :created_by => "Seed",
    :updated_by => "Seed"
  },
  {
    :name => "allow_manage_asset_and_inventory",
    :description => "Allow Manage Asset And Inventory", 
    :created_by => "Seed",
    :updated_by => "Seed"
  }
])
Role.destroy_all
Role.create!([
  { :name => "manager" },
  { :name => "staff" },
  { :name => "admin" }
])

User.destroy_all
User.create!([{
    :email => "admin@email.com",
    :firstname => "Admin",
    :lastname => "A.",
    :password => "123123"
  },
  {
    :email => "manager@email.com",
    :firstname => "Manager",
    :lastname => "M.j",
    :password => "123123"
  },
  {
    :email => "staff@email.com",
    :firstname => "Staff",
    :lastname => "S.",
    :password => "123123"
  }
])

# store users
ua = User.find_by_firstname("Admin")
um = User.find_by_firstname("Manager")
us = User.find_by_firstname("Staff")

RolesUsers.create!([
  { :user_id => ua.id,
    :role_id => Role.find_by_name("admin").id },
  { :user_id => um.id,
    :role_id => Role.find_by_name("manager").id },
  { :user_id => us.id,
    :role_id => Role.find_by_name("staff").id }
])

# Asset -------------------------------------------------------
# First Asset
Asset.create!({
      :asset_no => nil,
      :model => "Xmod",
      :name => "Asset First",
      :power => "50 kW",
      :dimension => "100 x 100 x 200",
      :remark => "sample",
      :priority_id => 2,
      :status_id => 1,
      :parent_id => nil,
      :type_id => nil, # TODO ??
      :template_id => nil,
      :category_id => 1,
      :location_id => nil,
      :weight => "123 KG",
      :weight_uom_id => nil,
      :serial_no => "XMOD001",
      :owner_user_id => um.id,
      :start_date => Time.now,
      :purchase_date => "2012-02-22".to_date,
      :original_cost => nil,
      :manufacturer_id => nil, # TODO
      :vendor_id => nil, # TODO
      :upload_id => nil, # TODO
      :warranty_start_date => "2012-02-22".to_date,
      :warranty_end_date => "2014-02-22".to_date,
      :maint_labor_hours => nil,
      :maint_labor_cost => nil,
      :maint_material_cost => nil,
      :maint_cost => nil,
      :rollup_cost => nil,
      :costcode_id => nil,
      :dept_id => nil,
      :in_id => nil, # TODO
      :depreciation_type_id => nil,
      :depreciation_start => nil,
      :depreciation_time_id  => nil,
      :depreciation_rate => nil,
      :description => nil,
      :updated_id => ua.id,
      :created_id => ua.id
})

# Second Asset
Asset.create!({
      :asset_no => nil,
      :model => "Xmod",
      :name => "Asset Second",
      :power => "50 kW",
      :dimension => "100 x 100 x 200",
      :remark => "sample",
      :priority_id => 2,
      :status_id => 1,
      :parent_id => nil,
      :type_id => nil, # TODO ??
      :template_id => nil,
      :category_id => 1,
      :location_id => nil,
      :weight => "123 KG",
      :weight_uom_id => nil,
      :serial_no => "XMOD003",
      :owner_user_id => um.id,
      :start_date => Time.now,
      :purchase_date => "2012-02-22".to_date,
      :original_cost => nil,
      :manufacturer_id => nil, # TODO
      :vendor_id => nil, # TODO
      :upload_id => nil, # TODO
      :warranty_start_date => "2012-02-22".to_date,
      :warranty_end_date => "2014-02-22".to_date,
      :maint_labor_hours => nil,
      :maint_labor_cost => nil,
      :maint_material_cost => nil,
      :maint_cost => nil,
      :rollup_cost => nil,
      :costcode_id => nil,
      :dept_id => nil,
      :in_id => nil, # TODO
      :depreciation_type_id => nil,
      :depreciation_start => nil,
      :depreciation_time_id  => nil,
      :depreciation_rate => nil,
      :description => nil,
      :updated_id => ua.id,
      :created_id => ua.id
})

# Inventory -----------------------------------------------
inv_type_wire = InvType.create!({
  :name => "สายไฟ",
  :created_id => ua.id,
  :updated_id => ua.id
})

inv_type_not = InvType.create!({
  :name => "น๊อต",
  :created_id => ua.id,
  :updated_id => ua.id
})

inv_type_bearing = InvType.create!({
  :name => "Bearing",
  :created_id => ua.id,
  :updated_id => ua.id
})

# Wire 
Inventory.create!({
  :inv_no => nil,
  :note => "sample inv",
  :type_id => inv_type_wire.id,
  :category_id => 1,
  :stock_type_id => 1,
  :valuation_type_id => 1,
  :abc_id  => nil,
  :abc_time => nil,
  :uom_id => nil,
  :avg_unit_cost => 10,
  :rent_uom_id  => nil, 
  :rent_rate => nil,
  :qty_in_stock => 100,

  :qty_on_order => 10,
  :qty_reserved => nil,
  :qty_to_order => 100,
  :order_gen_id => nil,
  :order_type_id => nil,
  :min_level => nil,
  :max_level => nil,
  :reorder_point => nil,
  :reorder_qty => nil,
  :owner_user_id  => ua.id,  
  :notification_id => nil,
  :costcode_id => nil,

  :description => nil,
  :updated_id => ua.id, 
  :created_id => ua.id,

 })

# Not 
Inventory.create!({
  :inv_no => nil,
  :note => "Sample Inventory",
  :type_id => inv_type_not.id,
  :category_id => 1,
  :stock_type_id => 1,
  :valuation_type_id => 1,
  :abc_id  => nil,
  :abc_time => nil,
  :uom_id => nil,
  :avg_unit_cost => 5,
  :rent_uom_id  => nil, 
  :rent_rate => nil,
  :qty_in_stock => 200,

  :qty_on_order => 20,
  :qty_reserved => nil,
  :qty_to_order => 200,
  :order_gen_id => nil,
  :order_type_id => nil,
  :min_level => nil,
  :max_level => nil,
  :reorder_point => nil,
  :reorder_qty => nil,
  :owner_user_id  => ua.id,  
  :notification_id => nil,
  :costcode_id => nil,

  :description => nil,
  :updated_id => ua.id, 
  :created_id => ua.id,

 })

# Bearing
Inventory.create!({
  :inv_no => nil,
  :note => "Sample Bearing Inventory",
  :type_id => inv_type_bearing.id,
  :category_id => 1,
  :stock_type_id => 1,
  :valuation_type_id => 1,
  :abc_id  => nil,
  :abc_time => nil,
  :uom_id => nil,
  :avg_unit_cost => 25,
  :rent_uom_id  => nil, 
  :rent_rate => nil,
  :qty_in_stock => 300,

  :qty_on_order => 30,
  :qty_reserved => nil,
  :qty_to_order => 300,
  :order_gen_id => nil,
  :order_type_id => nil,
  :min_level => nil,
  :max_level => nil,
  :reorder_point => nil,
  :reorder_qty => nil,
  :owner_user_id  => ua.id,  
  :notification_id => nil,
  :costcode_id => nil,

  :description => nil,
  :updated_id => ua.id, 
  :created_id => ua.id,

 })
