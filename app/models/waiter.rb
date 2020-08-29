class Waiter < User
  has_many :vouchers, foreign_key: :user_id
end
