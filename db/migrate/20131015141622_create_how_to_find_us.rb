class CreateHowToFindUs < ActiveRecord::Migration
  def change
    create_table :how_to_find_us do |t|
      t.string :title
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
