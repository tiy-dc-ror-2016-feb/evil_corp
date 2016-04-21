class ReportController < ApplicationController
  def new
  end

  def create
    @branch = Branch.find(params[:report][:branch_id])
    CreateAccountReportJob.perform_later(@branch)
  end
end
