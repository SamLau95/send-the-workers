class RemoveVideoUrlFromTestimony < ActiveRecord::Migration
  def change
    remove_column :testimonies, :video_url, :string
  end
end
