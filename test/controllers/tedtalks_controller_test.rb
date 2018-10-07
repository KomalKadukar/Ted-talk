require 'test_helper'

class TedtalksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tedtalks_index_url
    assert_response :success
  end

  test "should get show" do
    get tedtalks_show_url
    assert_response :success
  end

end
