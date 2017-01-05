class Message < ApplicationRecord
  validates :name, :email, :phone, :message, presence: true
  validates :email, email_format: { message: "Email inválido" }
end
