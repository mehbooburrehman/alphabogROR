require "application_system_test_case"

class AtriclesTest < ApplicationSystemTestCase
  setup do
    @atricle = atricles(:one)
  end

  test "visiting the index" do
    visit atricles_url
    assert_selector "h1", text: "Atricles"
  end

  test "creating a Atricle" do
    visit atricles_url
    click_on "New Atricle"

    fill_in "Description", with: @atricle.description
    fill_in "Title", with: @atricle.title
    click_on "Create Atricle"

    assert_text "Atricle was successfully created"
    click_on "Back"
  end

  test "updating a Atricle" do
    visit atricles_url
    click_on "Edit", match: :first

    fill_in "Description", with: @atricle.description
    fill_in "Title", with: @atricle.title
    click_on "Update Atricle"

    assert_text "Atricle was successfully updated"
    click_on "Back"
  end

  test "destroying a Atricle" do
    visit atricles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Atricle was successfully destroyed"
  end
end
