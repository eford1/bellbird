class Alarm < ApplicationRecord
  has_many :upvotes

  validates :text, presence: true
  validate :all_caps

  def all_caps
    unless text.upcase == text
      errors.add(:text, "must be upper case")
    end
  end
end
