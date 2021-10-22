class PaymentRequestsController < ApplicationController
  before_action :set_payment_request, only: %i[ show ]

  # GET /payment_requests or /payment_requests.json
  def index
    @payment_requests = PaymentRequest.all
  end

  # GET /payment_requests/1 or /payment_requests/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment_request
      @payment_request = PaymentRequest.find(params[:id])
    end
end
