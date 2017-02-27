class Post < ApplicationRecord
  serialize :colors, Array
  enum color: [:red, :black]
  enum country: [:china, :japan]
  enum city: [:nb, :hz, :bj]

  validates :colors, presence: true, on: :reset_colors

  def reset_colors
    self.colors[1].nil?
  end

end
