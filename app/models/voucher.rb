class Voucher < ApplicationRecord
  belongs_to :user, class_name: "Waiter"
  has_and_belongs_to_many :orders
end
