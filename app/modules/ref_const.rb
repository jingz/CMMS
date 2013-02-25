# take care all fixed reference
# should include after REF_MAP const
module RefConst
  def self.included(base)
    base.extend ClassMethod 

    base.instance_eval do
      get_map.each do |field, values| 
        define_method "#{field}_val" do
          f = values.find{|h| h[:key] == self.send("#{field}_id")} || {}
          f[:val]
        end
      end
    end

  end

  module ClassMethod
    def get_map(field = nil)
      if field
        self::REF_MAP[field.to_sym]
      else
        self::REF_MAP
      end
    end

    def get_ref_key(k, v)
      r = self::REF_MAP[k.to_sym].find{|r| r[:val].to_s == v.to_s } 
      r ? r[:key] : nil
    end

    def list_ref_const(k)
      self::REF_MAP[k.to_sym].map{|r| [r[:val].to_s.humanize, r[:key]] }
    end
  end

  
end
