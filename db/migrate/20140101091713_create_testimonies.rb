class CreateTestimonies < ActiveRecord::Migration
  def change
    create_table :testimonies do |t|
      t.string :name
      t.string :summary
      t.string :content
      t.string :video_url

      t.timestamps
    end
  end
end
