class CreateBabies < ActiveRecord::Migration
  def change
    create_table :babies do |t|
      t.string :name
      t.string :surname
      t.integer :age
      t.references :father

      t.timestamps
    end
    add_index :babies, :father_id
  end
end
