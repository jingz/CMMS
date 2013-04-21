class Inventory < ActiveRecord::Base
	belongs_to :in_type, :class_name => "InvType",
    								   :foreign_key => "type_id"	
  belongs_to :updated_by, :class_name => "User",
  											  :foreign_key => :updated_id
  belongs_to :created_by, :class_name => "User",
  											  :foreign_key => :created_id
	REF_MAP = {
		:category => [
			{ :key => 1, :val => :part },
			{ :key => 2, :val => :tool }
		],

		:stock_type => [
			{ :key => 1, :val => :stock },
			{ :key => 2, :val => :non_stock },
			{ :key => 3, :val => :other }
		]
	}
	include RefConst

	self.per_page = 20

	before_create :auto_gen_no

	def auto_gen_no
    now = Time.now.to_date
    as = Inventory.where :created_at => now..now+1.day
    t = now.strftime("%Y%m%d")
    no = t + (as.count+1).to_s.rjust(3,"0")
    prefix = "INV" # TODO
    self[:inv_no] = prefix + no
	end

end
