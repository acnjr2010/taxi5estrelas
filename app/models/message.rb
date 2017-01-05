class Message < ApplicationRecord
  validates :name, :email, :phone, :message, presence: true
end
