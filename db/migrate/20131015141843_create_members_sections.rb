class CreateMembersSections < ActiveRecord::Migration
  def change
    create_table :members_sections do |t|
      t.string :title
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
