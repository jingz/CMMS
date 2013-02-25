class Asset < ActiveRecord::Base
  REF_MAP = {
    :priority => [
      { :key => 1, :val => :critical },
      { :key => 2, :val => :production },
      { :key => 3, :val => :non_production }
    ],
    :status => [
      { :key => 1, :val => :in_service },
      { :key => 2, :val => :in_repaire },
      { :key => 3, :val => :scrapped }
    ],
    :category => [ 
      { :key => 1, :val => :machine }, 
      { :key => 2, :val => :equipment },
      { :key => 3, :val => :building },
      { :key => 4, :val => :system },
      { :key => 5, :val => :location }
    ],
    :depreciation_type => [ 
      { :key => 1, :val => :straight },
      { :key => 2, :val => :other } 
    ], 
    :depreciation_time => [ 
      { :key => 1, :val => :annually },
      { :key => 2, :val => :quarterly }
    ] 
  } 
  include RefConst

  before_create :add_default

  # attr_accessor :picture
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  self.per_page = 20

  def add_default
    now = Time.now.to_date
    as = Asset.where :created_at => now..now+1.day
    t = now.strftime("%Y%m%d")
    asset_no = t + (as.count+1).to_s.rjust(3,"0")
    prefix = self.category_val.to_s[0].upcase
    self[:asset_no] = prefix + asset_no
  end

end
