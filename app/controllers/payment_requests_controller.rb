# frozen_string_literal: true

class PaymentRequestsController < ApplicationController
  before_action :set_payment_request, only: %i[show]

  # GET /payment_requests
  def index
    @payment_requests = PaymentRequest.all
  end

  # GET /payment_requests/1
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_payment_request
    @payment_request = PaymentRequest.find(params[:id])
  end
end
