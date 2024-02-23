require "application_system_test_case"

class HamstersTest < ApplicationSystemTestCase
  setup do
    @hamster = hamsters(:one)
  end

  test "visiting the index" do
    visit hamsters_url
    assert_selector "h1", text: "Hamsters"
  end

  test "creating a Hamster" do
    visit hamsters_url
    click_on "New Hamster"

    fill_in "City", with: @hamster.city
    fill_in "Hamstername", with: @hamster.hamstername
    fill_in "High", with: @hamster.high
    click_on "Create Hamster"

    assert_text "Hamster was successfully created"
    click_on "Back"
  end

  test "updating a Hamster" do
    visit hamsters_url
    click_on "Edit", match: :first

    fill_in "City", with: @hamster.city
    fill_in "Hamstername", with: @hamster.hamstername
    fill_in "High", with: @hamster.high
    click_on "Update Hamster"

    assert_text "Hamster was successfully updated"
    click_on "Back"
  end

  test "destroying a Hamster" do
    visit hamsters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hamster was successfully destroyed"
  end
end
