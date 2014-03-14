class Father < ActiveRecord::Base
 
 validates :name,  :surname, :job, presence: true

attr_accessible  :name, :surname, :job


def sum ()
   return surname * job; 
end

end

