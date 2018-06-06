# == Schema Information
#
# Table name: jobs
#
#  id            :integer          not null, primary key
#  sector        :string
#  activity_area :string
#  label         :string
#  category      :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Job < ApplicationRecord
end
