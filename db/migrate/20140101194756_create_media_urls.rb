class CreateMediaUrls < ActiveRecord::Migration
  def change
    create_table :media_urls do |t|
      t.string :type
      t.string :url
      t.belongs_to :testimony

      t.timestamps
    end
  end
end
