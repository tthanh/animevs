require 'test_helper'

class FansubTest < ActiveSupport::TestCase
  def setup
    @fansub = Fansub.new(
      name: "example",
      homepage: "example.com"
    )
  end

  test 'fansub should be valid' do
    assert @fansub.valid?
  end

  test 'fansub name should be present' do
    @fansub.name = nil
    assert_not @fansub.valid?
  end

  test 'fansub name should not longer than 255 chars' do
    @fansub.name = "a"*255
    assert_not @fansub.valid?
  end

  test 'fansub homepage should be present' do
    @fansub.homepage = nil
    assert_not @fansub.valid?
  end
end
