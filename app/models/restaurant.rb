class Restaurant < ActiveRecord::Base
  # == Constants ============================================================
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  # == Attributes ===========================================================

  # == Extensions ===========================================================

  # == Relationships ========================================================
  has_many :reviews, dependent: :destroy
  # == Validations ==========================================================
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORIES,
      message: "%{value} is not a valid category" }
  # == Scopes ===============================================================

  # == Callbacks ============================================================

  # == Class Methods ========================================================

  # == Instance Methods =====================================================

end
