class Father < ActiveRecord::Base
 
 validates :name,  :surname, :job, presence: true


attr_accessible  :name, :surname, :job
has_many :babies


def sum ()
  surname * job 
end

end

