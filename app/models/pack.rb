# frozen_string_literal: true

class Pack < ApplicationRecord
  has_many :cards, dependent: :destroy
end
