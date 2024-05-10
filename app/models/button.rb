class Button < ApplicationRecord
  attr_accessor :raise_validation_error

  validates :clicked, inclusion: { in: [true, false] }

  before_validation :raise_error, if: -> { raise_validation_error == "1" }
  def raise_error
    errors.add(:raise_validation_error, "This is a validation error")
  end

  def self.ransackable_attributes(auth_object = nil)
    ["clicked", "clicked_at", "created_at", "id", "id_value", "updated_at"]
  end
end
