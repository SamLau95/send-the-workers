# == Schema Information
#
# Table name: media_urls
#
#  id           :integer          not null, primary key
#  type         :string(255)
#  url          :text
#  testimony_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class MediaUrl < ActiveRecord::Base
  validates :url, presence: true
end
