require "application_system_test_case"

class CorporacionsTest < ApplicationSystemTestCase
  setup do
    @corporacion = corporacions(:one)
  end

  test "visiting the index" do
    visit corporacions_url
    assert_selector "h1", text: "Corporacions"
  end

  test "creating a Corporacion" do
    visit corporacions_url
    click_on "New Corporacion"

    fill_in "Contraseña", with: @corporacion.contraseña
    fill_in "Filas", with: @corporacion.filas
    fill_in "Nombre", with: @corporacion.nombre
    fill_in "Rut", with: @corporacion.rut
    fill_in "Sucursal", with: @corporacion.sucursal
    click_on "Create Corporacion"

    assert_text "Corporacion was successfully created"
    click_on "Back"
  end

  test "updating a Corporacion" do
    visit corporacions_url
    click_on "Edit", match: :first

    fill_in "Contraseña", with: @corporacion.contraseña
    fill_in "Filas", with: @corporacion.filas
    fill_in "Nombre", with: @corporacion.nombre
    fill_in "Rut", with: @corporacion.rut
    fill_in "Sucursal", with: @corporacion.sucursal
    click_on "Update Corporacion"

    assert_text "Corporacion was successfully updated"
    click_on "Back"
  end

  test "destroying a Corporacion" do
    visit corporacions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Corporacion was successfully destroyed"
  end
end
