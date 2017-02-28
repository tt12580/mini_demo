class Post < ApplicationRecord
  serialize :colors, Array
  enum color: [:red, :black]
  enum country: [:china, :japan]
  enum city: [:nb, :hz, :bj]

  validate :must_have_one_color

  def must_have_one_color
     errors.add(:colors, 'You must select at least one color') if self.colors.blank?
  end

end
