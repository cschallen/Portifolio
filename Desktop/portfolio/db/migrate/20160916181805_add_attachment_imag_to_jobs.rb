class AddAttachmentImagToJobs < ActiveRecord::Migration
  def self.up
    change_table :jobs do |t|
      t.attachment :imag
    end
  end

  def self.down
    remove_attachment :jobs, :imag
  end
end
