class Game < ApplicationRecord
  def self.order_by_title
    order(:tite)
  end
end
