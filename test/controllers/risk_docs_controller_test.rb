require 'test_helper'

class RiskDocsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @risk_doc = risk_docs(:one)
  end

  test "should get index" do
    get risk_docs_url, as: :json
    assert_response :success
  end

  test "should create risk_doc" do
    assert_difference('RiskDoc.count') do
      post risk_docs_url, params: { risk_doc: { category: @risk_doc.category, description: @risk_doc.description, impact: @risk_doc.impact, name: @risk_doc.name, occurrences: @risk_doc.occurrences, probability_of_happen: @risk_doc.probability_of_happen, residual_risk: @risk_doc.residual_risk, severity: @risk_doc.severity, severity_str: @risk_doc.severity_str, treatment: @risk_doc.treatment } }, as: :json
    end

    assert_response 201
  end

  test "should show risk_doc" do
    get risk_doc_url(@risk_doc), as: :json
    assert_response :success
  end

  test "should update risk_doc" do
    patch risk_doc_url(@risk_doc), params: { risk_doc: { category: @risk_doc.category, description: @risk_doc.description, impact: @risk_doc.impact, name: @risk_doc.name, occurrences: @risk_doc.occurrences, probability_of_happen: @risk_doc.probability_of_happen, residual_risk: @risk_doc.residual_risk, severity: @risk_doc.severity, severity_str: @risk_doc.severity_str, treatment: @risk_doc.treatment } }, as: :json
    assert_response 200
  end

  test "should destroy risk_doc" do
    assert_difference('RiskDoc.count', -1) do
      delete risk_doc_url(@risk_doc), as: :json
    end

    assert_response 204
  end
end
