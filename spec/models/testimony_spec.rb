# == Schema Information
#
# Table name: testimonies
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  summary    :string(255)
#  content    :string(255)
#  video_url  :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Testimony do
  pending "add some examples to (or delete) #{__FILE__}"
end
