require 'test_helper'

class CourTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @cour = Cour.new(title: "monCour", description: "Description de mon livre")
  end

  # @cour doit être valide selon les critère dans le fichier "cour.rb"
  test "should be valid" do
    assert @cour.valid?
  end

  #le titre doit exister et different d'un string vide
  test "title should be present" do
    @cour.title = "  "
    assert_not @cour.valid?
  end

  test "description  should be present" do
    @cour.description = "  "
    assert_not @cour.valid?
  end
end
