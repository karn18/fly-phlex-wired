class Note < ApplicationRecord
  scope :actived, -> { where(actived: true)}

  def self.implicit_order_column
    "created_at"
  end
end
