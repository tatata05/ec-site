class Order < ApplicationRecord
  belongs_to :user
#has_many :user, dependent: :destroy
#has_many :products, dependent: :destroy

end
