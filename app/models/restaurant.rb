class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :phone_number, presence: true, uniqueness: true
  validates :category, inclusion: { in: ['chinese', 'italian', 'japanese', 'french', 'belgian'], allow_nil: false }
end
