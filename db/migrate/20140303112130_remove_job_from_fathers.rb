class RemoveJobFromFathers < ActiveRecord::Migration
  def up
    remove_column :fathers, :job
  end

  def down
    add_column :fathers, :job, :string
  end
end
