class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.string :name
      t.text :description
      t.string :problem
      t.string :solution
      t.integer :difficulty

      t.timestamps
    end
  end
end
