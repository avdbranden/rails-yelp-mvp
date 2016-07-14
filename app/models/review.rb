class Review < ActiveRecord::Base
  # == Constants ============================================================

  # == Attributes ===========================================================

  # == Extensions ===========================================================

  # == Relationships ========================================================
  belongs_to :restaurant
  # == Validations ==========================================================
  validates :restaurant, presence: true
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: (0..5).to_a,
      message: "%{value} should be a number between 0 and 5" }
  # == Scopes ===============================================================

  # == Callbacks ============================================================

  # == Class Methods ========================================================

  # == Instance Methods =====================================================

end
