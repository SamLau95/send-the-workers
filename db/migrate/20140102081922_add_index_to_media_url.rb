class AddIndexToMediaUrl < ActiveRecord::Migration
  def change
    add_index :media_urls, :testimony_id
  end
end
