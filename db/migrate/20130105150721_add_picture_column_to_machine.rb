class AddPictureColumnToMachine < ActiveRecord::Migration
  def self.up
    add_attachment :machines, :picture
  end

  def self.down
    remove_attachment :machines, :picture
  end
end
