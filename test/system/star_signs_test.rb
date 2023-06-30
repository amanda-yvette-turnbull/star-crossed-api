require "application_system_test_case"

class StarSignsTest < ApplicationSystemTestCase
  setup do
    @star_sign = star_signs(:one)
  end

  test "visiting the index" do
    visit star_signs_url
    assert_selector "h1", text: "Star signs"
  end

  test "should create star sign" do
    visit star_signs_url
    click_on "New star sign"

    fill_in "Blurb", with: @star_sign.blurb
    fill_in "Date range", with: @star_sign.date_range
    fill_in "Default compatibility", with: @star_sign.default_compatibility
    fill_in "Image", with: @star_sign.image
    fill_in "Name", with: @star_sign.name
    fill_in "String", with: @star_sign.string
    click_on "Create Star sign"

    assert_text "Star sign was successfully created"
    click_on "Back"
  end

  test "should update Star sign" do
    visit star_sign_url(@star_sign)
    click_on "Edit this star sign", match: :first

    fill_in "Blurb", with: @star_sign.blurb
    fill_in "Date range", with: @star_sign.date_range
    fill_in "Default compatibility", with: @star_sign.default_compatibility
    fill_in "Image", with: @star_sign.image
    fill_in "Name", with: @star_sign.name
    fill_in "String", with: @star_sign.string
    click_on "Update Star sign"

    assert_text "Star sign was successfully updated"
    click_on "Back"
  end

  test "should destroy Star sign" do
    visit star_sign_url(@star_sign)
    click_on "Destroy this star sign", match: :first

    assert_text "Star sign was successfully destroyed"
  end
end
