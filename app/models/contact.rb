class Contact < ApplicationRecord
    belongs_to :user

    validates :name, presence: true, length: {maximum: 30}
    validates :phone, presence: true

    scope :list, -> { order("created_at DESC")}
end
