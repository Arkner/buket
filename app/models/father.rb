class Father < ActiveRecord::Base
 
 validates :name, :age, :surname, :job,  presence: true

 validates :age, numericality: { less_than: 150 }

attr_accessible :age, :name, :surname, :job
has_many :babies
end

