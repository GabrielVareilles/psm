# == Schema Information
#
# Table name: naf_jobs
#
#  id          :integer          not null, primary key
#  description :text
#  naf_code    :string
#  lvl1        :string
#  lvl1_desc   :text
#  lvl2        :string
#  lvl2_desc   :text
#  lvl3        :string
#  lvl3_desc   :text
#  lvl4        :string
#  lvl4_desc   :text
#  lvl5        :string
#  lvl5_desc   :text
#  siblings    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class NafJobTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
