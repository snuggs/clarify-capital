class Client < ApplicationRecord
  default_scope { order created_at: :desc }

  validates :first_name, presence: true

  validates :last_name, presence: true

  validates :credit_score, presence: true

  validates :phone, presence: true

  validates :email, presence: true
end
