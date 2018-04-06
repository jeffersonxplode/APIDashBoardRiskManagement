require 'test_helper'

class RiscosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @risco = riscos(:one)
  end

  test "should get index" do
    get riscos_url, as: :json
    assert_response :success
  end

  test "should create risco" do
    assert_difference('Risco.count') do
      post riscos_url, params: { risco: { category: @risco.category, description: @risco.description, impact: @risco.impact, name: @risco.name, occurences: @risco.occurences, probability_of_happen: @risco.probability_of_happen, residual_risk: @risco.residual_risk, severity: @risco.severity, treatment: @risco.treatment } }, as: :json
    end

    assert_response 201
  end

  test "should show risco" do
    get risco_url(@risco), as: :json
    assert_response :success
  end

  test "should update risco" do
    patch risco_url(@risco), params: { risco: { category: @risco.category, description: @risco.description, impact: @risco.impact, name: @risco.name, occurences: @risco.occurences, probability_of_happen: @risco.probability_of_happen, residual_risk: @risco.residual_risk, severity: @risco.severity, treatment: @risco.treatment } }, as: :json
    assert_response 200
  end

  test "should destroy risco" do
    assert_difference('Risco.count', -1) do
      delete risco_url(@risco), as: :json
    end

    assert_response 204
  end
end
