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

require 'spec_helper'

describe MediaUrl do
  pending "add some examples to (or delete) #{__FILE__}"
end
