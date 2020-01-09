class Email < ApplicationRecord

  has_many :replies, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5 }

end
