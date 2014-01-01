class ChangeStringToText < ActiveRecord::Migration
  def change
    change_column :testimonies, :name, :text
    change_column :testimonies, :summary, :text
    change_column :testimonies, :content, :text

    change_column :media_urls, :url, :text
  end
end
