class Lecon < ApplicationRecord
  #une leçon appartient qu'à un cours
  belongs_to :cour

  #le titre et le body doivent être présent
  validates :title, presence: true
  validates :body, presence: true


end
