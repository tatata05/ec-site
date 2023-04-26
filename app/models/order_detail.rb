class OrderDetail < ApplicationRecord
  belongs_to :products
  belongs_to :order
  belongs_to :shipment_status
  #has_many :user, dependent: :destroy
  #has_many :products, dependent: :destroy
end
