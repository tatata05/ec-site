class OrderDetail < ApplicationRecord
  belongs_to :products_id
  belongs_to :order_id
  belongs_to :shipment_status_id
  #has_many :user, dependent: :destroy
  #has_many :products, dependent: :destroy
end
