class Menu < ApplicationRecord
  belongs_to :user
  has_one    :diagnosis

  validates :name, presence: true
end
