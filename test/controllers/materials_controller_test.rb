require 'test_helper'

class MaterialsControllerTest < ActionDispatch::IntegrationTest

  # test "the truth" do
  #   assert true
  # end

  test "should get index" do
    get materials_index_url
    assert_response :success
  end

  test "should get show" do
    get materials_show_url
    assert_response :success
  end

  test "should get new" do
    get materials_new_url
    assert_response :success
  end


end
