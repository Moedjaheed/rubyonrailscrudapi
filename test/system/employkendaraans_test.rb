require "application_system_test_case"

class EmploykendaraansTest < ApplicationSystemTestCase
  setup do
    @employkendaraan = employkendaraans(:one)
  end

  test "visiting the index" do
    visit employkendaraans_url
    assert_selector "h1", text: "Employkendaraans"
  end

  test "creating a Employkendaraan" do
    visit employkendaraans_url
    click_on "New Employkendaraan"

    click_on "Create Employkendaraan"

    assert_text "Employkendaraan was successfully created"
    click_on "Back"
  end

  test "updating a Employkendaraan" do
    visit employkendaraans_url
    click_on "Edit", match: :first

    click_on "Update Employkendaraan"

    assert_text "Employkendaraan was successfully updated"
    click_on "Back"
  end

  test "destroying a Employkendaraan" do
    visit employkendaraans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employkendaraan was successfully destroyed"
  end
end
