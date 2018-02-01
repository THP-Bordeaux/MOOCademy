class Cour < ApplicationRecord
  #un cour a plusieurs leçon
  has_many :lecon, dependent: :destroy

  #le titre et la description doivent être presente 
  validates :title, presence: true
  validates :description, presence: true

end
