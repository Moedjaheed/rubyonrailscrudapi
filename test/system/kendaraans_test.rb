require "application_system_test_case"

class KendaraansTest < ApplicationSystemTestCase
  setup do
    @kendaraan = kendaraans(:one)
  end

  test "visiting the index" do
    visit kendaraans_url
    assert_selector "h1", text: "Kendaraans"
  end

  test "creating a Kendaraan" do
    visit kendaraans_url
    click_on "New Kendaraan"

    fill_in "Employee", with: @kendaraan.employee_id
    fill_in "Merk kendaraan", with: @kendaraan.merk_kendaraan
    fill_in "Tipe kendaraan", with: @kendaraan.tipe_kendaraan
    click_on "Create Kendaraan"

    assert_text "Kendaraan was successfully created"
    click_on "Back"
  end

  test "updating a Kendaraan" do
    visit kendaraans_url
    click_on "Edit", match: :first

    fill_in "Employee", with: @kendaraan.employee_id
    fill_in "Merk kendaraan", with: @kendaraan.merk_kendaraan
    fill_in "Tipe kendaraan", with: @kendaraan.tipe_kendaraan
    click_on "Update Kendaraan"

    assert_text "Kendaraan was successfully updated"
    click_on "Back"
  end

  test "destroying a Kendaraan" do
    visit kendaraans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kendaraan was successfully destroyed"
  end
end
