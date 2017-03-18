class Leki < ApplicationRecord

  validates :nazwa,
            presence: true,
            length: { minimum: 3 }
  validates :cena,
            presence: true,
            numericality: { greater_than: 0 }

end
