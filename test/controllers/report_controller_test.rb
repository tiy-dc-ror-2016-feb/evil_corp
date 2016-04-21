require 'test_helper'

class ReportControllerTest < ActionController::TestCase
  include ActiveJob::TestHelper

  test "should get new" do
    get :new
    # Want form that has a drop for account
    assert_response :success
    assert_select("option[value]", 3, "has too many account")
    assert_select("option[value=\"\"]", 1, "does not have a default value")

    assert_select("form[action=?]", report_create_path)
  end

  test "should get create" do
    assert_enqueued_with job: CreateAccountReportJob do
      post :create, report: { account_id: accounts(:pnc).id }
    end
    assert_response :success
  end
end
