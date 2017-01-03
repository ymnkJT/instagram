class ChangeDatatypeImageOfPictures < ActiveRecord::Migration
  def change
    change_column :pictures, :image, :string
  end
end
