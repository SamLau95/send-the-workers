# == Schema Information
#
# Table name: testimonies
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  summary    :string(255)
#  content    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Testimony < ActiveRecord::Base
  has_many :image_urls
  has_one  :video_url

  validates :name, :summary, :content, presence: true
  validates :summary, length: { maximum: 2000 }

  def first_name
    name.split.first
  end

  def has_video?
    video_url
  end

  def has_images?
    image_urls
  end

  def video
    video_url.url if video_url
  end

  def images
    image_urls.map &:url
  end
end
