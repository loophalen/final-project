require "application_system_test_case"

class CrumbsTest < ApplicationSystemTestCase
  setup do
    @crumb = crumbs(:one)
  end

  test "visiting the index" do
    visit crumbs_url
    assert_selector "h1", text: "Crumbs"
  end

  test "creating a Crumb" do
    visit crumbs_url
    click_on "New Crumb"

    fill_in "Crumb", with: @crumb.crumb
    click_on "Create Crumb"

    assert_text "Crumb was successfully created"
    click_on "Back"
  end

  test "updating a Crumb" do
    visit crumbs_url
    click_on "Edit", match: :first

    fill_in "Crumb", with: @crumb.crumb
    click_on "Update Crumb"

    assert_text "Crumb was successfully updated"
    click_on "Back"
  end

  test "destroying a Crumb" do
    visit crumbs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Crumb was successfully destroyed"
  end
end
