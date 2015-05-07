class AddSectionToTutorials < ActiveRecord::Migration
  def change
    add_column :tutorials, :section, :string
  end
end
