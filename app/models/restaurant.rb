class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CUISINES = ['chinese', 'italian', 'japanese', 'french', 'belgian']

  validates :name, :address, :category, :phone_number, presence: true
  validates :category, inclusion: { in: CUISINES }
end
