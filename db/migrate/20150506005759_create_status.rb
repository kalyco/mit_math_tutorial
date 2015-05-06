class CreateStatus < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.integer :user_id
      t.integer :tutorial_id
      t.integer :completion

      t.timestamps
    end
  end
end
