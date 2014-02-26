class RemoveSurnameFromBabies < ActiveRecord::Migration
  def up
    remove_column :babies, :surname
  end

  def down
    add_column :babies, :surname, :string
  end
end
