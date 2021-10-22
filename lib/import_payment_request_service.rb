# frozen_string_literal: true

require 'bunny'

class ExportPaymentRequestService
  def subscribe_to_queue
    BunnyClient.incoming_queue.subscribe do |_delivery_info, _metadata, message|
      create_payment_request(message)
    end
  end

  private

  def create_payment_request(payment_request)
    parsed_msg = JSON.parse(message)

    payment_request = PaymentRequest.new(amount: parsed_msg['amount'], currency: parsed_msg['currency'],
                                         description: parsed_msg['description'], status: parsed_msg['status'], external_payment_request_id: parsed_msg['id'])
    payment_request.save
  end
end
