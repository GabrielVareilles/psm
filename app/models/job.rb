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
  include PgSearch
  pg_search_scope :search_full_text, against: [
    :label,
    :sector,
    :activity_area,
    :category
  ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
end
