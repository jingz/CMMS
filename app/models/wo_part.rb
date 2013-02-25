class WoPart < ActiveRecord::Base
	belongs_to :workorder
	belongs_to :inventory

	after_create :remove_part_from_the_stock

	def remove_part_from_the_stock
		inv = self.inventory	
		inv.qty_in_stock -= self.qty_used
		inv.save!
	end

end
