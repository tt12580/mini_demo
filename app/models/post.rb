class Post < ApplicationRecord
  serialize :colors, Array
  COLORS = %w[red black]
  COUNTRIES = %w[china japan]
  CITIES = %w[nb hz bj]

  validates :colors, inclusion: { in: [["0","red", "0"], ["0", "0", "black"], ["0", "red", "0", "black"]], message: "Must be selected" }

end
