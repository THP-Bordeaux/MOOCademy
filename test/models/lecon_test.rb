require 'test_helper'

class LeconTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @cour = Cour.new(title:"monCour", description:"Description de mon cour")
    @cour.save
    @lecon = Lecon.new(title:"monlecon", body:"Description de mon livre")
    @lecon.cour = @cour
  end

  # @lecon doit être valide selon les critères dans le fichier "lecon.rb"
  test "should be valid" do
    assert @lecon.valid?
  end

  #le titre doit exister et different d'un string vide
  test "title should be present" do
    @lecon.title = "  "
    assert_not @lecon.valid?
  end
  test "body should be present" do
    @lecon.body = "  "
    assert_not @lecon.valid?
  end




end
