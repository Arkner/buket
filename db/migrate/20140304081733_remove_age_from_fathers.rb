class RemoveAgeFromFathers < ActiveRecord::Migration
  def up
    remove_column :fathers, :age
  end

  def down
    add_column :fathers, :age, :integer
  end
end
