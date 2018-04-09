require 'test_helper'

class ErrorsControllerTest < ActionDispatch::IntegrationTest
  test "should get http_404" do
    get errors_http_404_url
    assert_response :success
  end

end
