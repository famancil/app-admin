require 'test_helper'

class CorporacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @corporacion = corporacions(:one)
  end

  test "should get index" do
    get corporacions_url
    assert_response :success
  end

  test "should get new" do
    get new_corporacion_url
    assert_response :success
  end

  test "should create corporacion" do
    assert_difference('Corporacion.count') do
      post corporacions_url, params: { corporacion: { contraseña: @corporacion.contraseña, filas: @corporacion.filas, nombre: @corporacion.nombre, rut: @corporacion.rut, sucursal: @corporacion.sucursal } }
    end

    assert_redirected_to corporacion_url(Corporacion.last)
  end

  test "should show corporacion" do
    get corporacion_url(@corporacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_corporacion_url(@corporacion)
    assert_response :success
  end

  test "should update corporacion" do
    patch corporacion_url(@corporacion), params: { corporacion: { contraseña: @corporacion.contraseña, filas: @corporacion.filas, nombre: @corporacion.nombre, rut: @corporacion.rut, sucursal: @corporacion.sucursal } }
    assert_redirected_to corporacion_url(@corporacion)
  end

  test "should destroy corporacion" do
    assert_difference('Corporacion.count', -1) do
      delete corporacion_url(@corporacion)
    end

    assert_redirected_to corporacions_url
  end
end
