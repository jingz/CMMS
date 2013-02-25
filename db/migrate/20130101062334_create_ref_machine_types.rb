class CreateRefMachineTypes < ActiveRecord::Migration
  def self.up
    create_table :ref_machine_types do |t|
      t.string :name, :null => false, :limit => 50
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :ref_machine_types
  end
end
