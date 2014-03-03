class AddJobToFathers < ActiveRecord::Migration
  def change
    add_column :fathers, :job, :integer
  end
end
