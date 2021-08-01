require "application_system_test_case"

class TestersTest < ApplicationSystemTestCase
  setup do
    @tester = testers(:one)
  end

  test "visiting the index" do
    visit testers_url
    assert_selector "h1", text: "Testers"
  end

  test "creating a Tester" do
    visit testers_url
    click_on "New Tester"

    click_on "Create Tester"

    assert_text "Tester was successfully created"
    click_on "Back"
  end

  test "updating a Tester" do
    visit testers_url
    click_on "Edit", match: :first

    click_on "Update Tester"

    assert_text "Tester was successfully updated"
    click_on "Back"
  end

  test "destroying a Tester" do
    visit testers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tester was successfully destroyed"
  end
end
