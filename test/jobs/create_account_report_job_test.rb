require 'test_helper'

class CreateAccountReportJobTest < ActiveJob::TestCase

  test 'sends account holder an email' do

    CreateAccountReportJob.perform_later(accounts(:one))

    assert_equal 1, ActionMailer::Base.deliveries.size
  end

end
