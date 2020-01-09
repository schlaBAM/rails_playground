class Reply < ApplicationRecord
  belongs_to :email

  validates :commenter, presence: :true
  validates :body, presence: true, length: {minimum: 2}
end
