class CreateAssetTypes < ActiveRecord::Migration
  def self.up
    create_table :asset_types do |t|
      t.string :type
      t.string :note
      t.integer :updated_id # users
      t.integer :created_id # users
      t.timestamps
    end
  end

  def self.down
    drop_table :asset_types
  end
end
