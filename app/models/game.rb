class Game < ApplicationRecord
  has_many :players

  def self.order_by_title
    order(:tite)
  end
  
end
