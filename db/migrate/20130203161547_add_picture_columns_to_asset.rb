class AddPictureColumnsToAsset < ActiveRecord::Migration
  def self.up
    add_attachment :assets, :picture
  end

  def self.down
    remove_attachment :assets, :picture
  end
end
