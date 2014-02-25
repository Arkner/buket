class RemoveSurnameFromChildren < ActiveRecord::Migration
  def up
    remove_column :children, :surname
  end

  def down
    add_column :children, :surname, :string
  end
end
