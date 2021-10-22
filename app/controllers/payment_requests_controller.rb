# frozen_string_literal: true

class PaymentRequestsController < ApplicationController
  before_action :set_payment_request, only: %i[ approve reject ]

  # GET /payment_requests
  def index
    @payment_requests = PaymentRequest.all
  end

  def approve
    @payment_request.approved!
    ExportPaymentRequestService.new(@payment_request.id).publish
    redirect_to payment_requests_path, notice: 'Payment request approved.'
  end

  def reject
    @payment_request.rejected!
    ExportPaymentRequestService.new(@payment_request.id).publish
    redirect_to payment_requests_path, notice: 'Payment request rejected.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment_request
      @payment_request = PaymentRequest.find(params[:id])
    end
end
