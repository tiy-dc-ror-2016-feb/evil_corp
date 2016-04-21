class ReportController < ApplicationController
  def new
  end

  def create
    @account = Account.find(params[:report][:account_id])
    CreateAccountReportJob.perform_later(@account)
  end
end
