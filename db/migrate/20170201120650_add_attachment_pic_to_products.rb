class AddAttachmentPicToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :pic
    end
  end

  def self.down
    remove_attachment :products, :pic
  end
end
