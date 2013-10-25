class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.string :title
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
