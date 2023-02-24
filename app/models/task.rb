class Task < ApplicationRecord
  belongs_to :user
  has_many :tasks
  validates :title, presence: true, uniqueness: { scope: :account_id }
  validates :content, presence: true
end
