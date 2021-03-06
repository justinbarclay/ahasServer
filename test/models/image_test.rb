# == Schema Information
#
# Table name: images
#
#  id           :integer          not null, primary key
#  data         :text
#  picture_type :string
#  patient_id   :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  name         :string
#  date         :integer
#

require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  def setup
    @image = images(:one)

  end

  test 'image must have a valid type' do
    assert @image.valid?
    @image.picture_type = 'lab result'
    assert @image.valid?
  end

  test 'image can not have invalid type' do
    @image.picture_type = :other_thing
    assert_not @image.valid?
  end

  test 'image type can not be blank' do
    @image.picture_type = ''
    assert_not @image.valid?
  end
end
