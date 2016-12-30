class Message < ApplicationRecord
  validates :name, :email, :phone, presence: true
end
