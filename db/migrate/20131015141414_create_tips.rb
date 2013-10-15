class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.string :title
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
