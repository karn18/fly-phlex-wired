class Note < ApplicationRecord
  def self.implicit_order_column
    "created_at"
  end
end
