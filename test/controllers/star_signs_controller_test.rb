require "test_helper"

class StarSignsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @star_sign = star_signs(:one)
  end

  test "should get index" do
    get star_signs_url
    assert_response :success
  end

  test "should get new" do
    get new_star_sign_url
    assert_response :success
  end

  test "should create star_sign" do
    assert_difference("StarSign.count") do
      post star_signs_url, params: { star_sign: { blurb: @star_sign.blurb, date_range: @star_sign.date_range, default_compatibility: @star_sign.default_compatibility, image: @star_sign.image, name: @star_sign.name, string: @star_sign.string } }
    end

    assert_redirected_to star_sign_url(StarSign.last)
  end

  test "should show star_sign" do
    get star_sign_url(@star_sign)
    assert_response :success
  end

  test "should get edit" do
    get edit_star_sign_url(@star_sign)
    assert_response :success
  end

  test "should update star_sign" do
    patch star_sign_url(@star_sign), params: { star_sign: { blurb: @star_sign.blurb, date_range: @star_sign.date_range, default_compatibility: @star_sign.default_compatibility, image: @star_sign.image, name: @star_sign.name, string: @star_sign.string } }
    assert_redirected_to star_sign_url(@star_sign)
  end

  test "should destroy star_sign" do
    assert_difference("StarSign.count", -1) do
      delete star_sign_url(@star_sign)
    end

    assert_redirected_to star_signs_url
  end
end
