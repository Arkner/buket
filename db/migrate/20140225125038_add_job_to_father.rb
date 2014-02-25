class AddJobToFather < ActiveRecord::Migration
  def change
    add_column :fathers, :job, :string
  end
end
