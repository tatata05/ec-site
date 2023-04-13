class User < ApplicationRecord
  belongs_to :user_classification
  has_many :orders, dependent: :destroy
  has_many :products, dependent: :destroy
end
