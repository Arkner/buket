class RemoveSurnameFromFather < ActiveRecord::Migration
  def up
    remove_column :fathers, :surname
  end

  def down
    add_column :fathers, :surname, :string
  end
end
