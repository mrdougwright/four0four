class AddAttachmentSite404ToNotfounds < ActiveRecord::Migration
  def self.up
    change_table :notfounds do |t|
      t.attachment :site_404
    end
  end

  def self.down
    drop_attached_file :notfounds, :site_404
  end
end
