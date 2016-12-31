class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.text       :image
      t.text       :content
      t.timestamps null: false
    end
  end
end
