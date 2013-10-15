class CreateUsefulLinks < ActiveRecord::Migration
  def change
    create_table :useful_links do |t|
      t.string :title
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
