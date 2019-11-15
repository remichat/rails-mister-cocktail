class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_one_attached :photo

  validates :name, uniqueness: true, presence: true
  validates :stars, presence: true
  validate :has_attachment

  attr_accessor :passphrase

  private

  def has_attachment
    return if photo.attached?

    errors.add(:photo, 'You need to provide an image')
  end
end
