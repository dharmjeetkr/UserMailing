class AddAttachmentAttachToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :attach
    end
  end

  def self.down
    remove_attachment :products, :attach
  end
end
