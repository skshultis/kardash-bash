require 'test_helper'

class FamControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fam_index_url
    assert_response :success
  end

end
