class Company < ApplicationRecord
  validates :company_name, {presence: true}
  validates :name, {presence: true}
  validates :phone, {presence: true, uniqueness: true}
  validates :email, {presence: true, uniqueness: true}
  # validates :password, {presence: true}

  has_secure_password
end
