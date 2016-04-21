class ReportMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.report_mailer.account.subject
  #
  def account(account)
    @account = account

    mail to: "to@example.org", open_tracking: true
  end
end
