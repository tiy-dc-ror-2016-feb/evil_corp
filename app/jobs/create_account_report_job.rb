class CreateAccountReportJob < ActiveJob::Base
  queue_as :default

  def perform(account)
    ReportMailer.account(account).deliver_now
  end
end
