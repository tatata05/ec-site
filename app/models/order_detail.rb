class OrderDetail < ApplicationRecord
  belongs_to :products_id
  belongs_to :order_id
  belongs_to :shipment_status_id
end
