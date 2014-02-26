class Baby < ActiveRecord::Base
  belongs_to :father
  attr_accessible :age, :name
end
