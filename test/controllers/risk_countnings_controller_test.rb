require 'test_helper'

class RiskCountningsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @risk_countning = risk_countnings(:one)
  end

  test "should get index" do
    get risk_countnings_url, as: :json
    assert_response :success
  end

  test "should create risk_countning" do
    assert_difference('RiskCountning.count') do
      post risk_countnings_url, params: { risk_countning: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show risk_countning" do
    get risk_countning_url(@risk_countning), as: :json
    assert_response :success
  end

  test "should update risk_countning" do
    patch risk_countning_url(@risk_countning), params: { risk_countning: {  } }, as: :json
    assert_response 200
  end

  test "should destroy risk_countning" do
    assert_difference('RiskCountning.count', -1) do
      delete risk_countning_url(@risk_countning), as: :json
    end

    assert_response 204
  end
end
