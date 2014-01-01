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

  def first_name
    name.split.first
  end

  def video
    video_url.url if video_url
  end

  def images
    image_urls.map &:url
  end
end
