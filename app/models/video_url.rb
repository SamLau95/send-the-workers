# == Schema Information
#
# Table name: media_urls
#
#  id           :integer          not null, primary key
#  type         :string(255)
#  url          :string(255)
#  testimony_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class VideoUrl < MediaUrl
  belongs_to :testimony
end
