class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :tag_list

      t.timestamps
    end
  end
end
