class Transaction < ApplicationRecord
  def short_description
    description.truncate(25)
  end
end
