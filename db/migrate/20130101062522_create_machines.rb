class CreateMachines < ActiveRecord::Migration
  def self.up
    create_table :machines do |t|
      t.string  :ref_no, :null => false, :limit => 20         
      t.references  :ref_machine_type                         
      t.string  :name,   :limit => 50                         
      t.string  :model,  :limit => 50                         
      t.string  :power,  :limit => 50                         
      t.string  :dimension, :limit => 50                      
      t.decimal :weigth, :precision => 2                      
      t.string  :supplier_company                             
      t.date    :acquired_date, :default => Time.now.to_date  
      t.date    :disposed_date                                
      t.text    :remark                                       
      t.string  :status, :limit => 10                         

      t.timestamps
    end
  end

  def self.down
    drop_table :machines
  end
end
