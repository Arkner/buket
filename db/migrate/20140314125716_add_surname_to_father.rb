class AddSurnameToFather < ActiveRecord::Migration
  def change
    add_column :fathers, :surname, :integer
  end
end
