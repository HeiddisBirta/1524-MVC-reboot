# frozen_string_literal: true

class Book < ActiveRecord::Base
  def rented
    self.rent = true
  end
end
