# frozen_string_literal: true

if defined?(::Rails::Server)
  ImportPaymentRequestService.new.subscribe_to_queue
end
