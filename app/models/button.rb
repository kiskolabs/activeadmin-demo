class Button < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["clicked", "clicked_at", "created_at", "id", "id_value", "updated_at"]
  end
end
