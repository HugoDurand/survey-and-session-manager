require 'test_helper'

class ParticipantsadmControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get participantsadm_index_url
    assert_response :success
  end

  test "should get new" do
    get participantsadm_new_url
    assert_response :success
  end

  test "should get edit" do
    get participantsadm_edit_url
    assert_response :success
  end

end
