# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

RefMachineType.destroy_all

RefMachineType.create({
  :name => "Machine Type A",
  :description => "Machine Type A"
})

RefMachineType.create({
  :name => "Machine Type B",
  :description => "Machine Type B"
})

RefMaintenanceType.create([
  { 
    :name => "No Electricity",
    :description => "No Electricity"
  },
  {
    :name => "setup time",
    :description => "setup time"
  },
  {
    :name => "adjust time",
    :description => "adjust time"
  },
  {
    :name => "P/N change",
    :description => "P/N change"
  },
  {
    :name => "Tool Change",
    :description => "Tool Change"
  },
  {
    :name => "Holiday",
    :description => "Holiday"
  },
  {
    :name => "5S.",
    :description => "5S."
  },
  {
    :name => "PM",
    :description => "PM"
  },
  {
    :name => "Other",
    :description => "Other"
  }
])
