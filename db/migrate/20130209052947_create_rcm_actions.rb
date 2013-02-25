class CreateRcmActions < ActiveRecord::Migration
  def self.up
    create_table :rcm_actions do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :rcm_actions
  end
end
