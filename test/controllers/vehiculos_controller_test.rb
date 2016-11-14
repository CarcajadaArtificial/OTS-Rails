require 'test_helper'

class VehiculosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehiculo = vehiculos(:one)
  end

  test "should get index" do
    get vehiculos_url
    assert_response :success
  end

  test "should get new" do
    get new_vehiculo_url
    assert_response :success
  end

  test "should create vehiculo" do
    assert_difference('Vehiculo.count') do
      post vehiculos_url, params: { vehiculo: { ano_vehiculo: @vehiculo.ano_vehiculo, marca_vehiculo: @vehiculo.marca_vehiculo, modelo_vehiculo: @vehiculo.modelo_vehiculo, operador_vehiculo: @vehiculo.operador_vehiculo, placas_vehiculo: @vehiculo.placas_vehiculo, rendimientohistorico_vehiculo: @vehiculo.rendimientohistorico_vehiculo } }
    end

    assert_redirected_to vehiculo_url(Vehiculo.last)
  end

  test "should show vehiculo" do
    get vehiculo_url(@vehiculo)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehiculo_url(@vehiculo)
    assert_response :success
  end

  test "should update vehiculo" do
    patch vehiculo_url(@vehiculo), params: { vehiculo: { ano_vehiculo: @vehiculo.ano_vehiculo, marca_vehiculo: @vehiculo.marca_vehiculo, modelo_vehiculo: @vehiculo.modelo_vehiculo, operador_vehiculo: @vehiculo.operador_vehiculo, placas_vehiculo: @vehiculo.placas_vehiculo, rendimientohistorico_vehiculo: @vehiculo.rendimientohistorico_vehiculo } }
    assert_redirected_to vehiculo_url(@vehiculo)
  end

  test "should destroy vehiculo" do
    assert_difference('Vehiculo.count', -1) do
      delete vehiculo_url(@vehiculo)
    end

    assert_redirected_to vehiculos_url
  end
end
