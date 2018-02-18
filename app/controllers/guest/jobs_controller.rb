class Guest::JobsController < ApplicationController
  skip_before_action :authenticate_request

  def show_bill
    uuid = params[:uuid]
    render json: {
      message: "showing bill #{uuid}",
      amount: Job.select('bill_amount').where(['uuid = ?', uuid]).first
    }, status: 200
  end
end
