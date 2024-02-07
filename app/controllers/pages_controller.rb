class PagesController < ApplicationController
  def home
    render({ :template => "pages_templates/home"})
  end

  def two_six
    @first_die = rand(1..6)
    @second_die = rand(1..6)
    render({ :template => "pages_templates/two_six"})
  end

  def two_ten
    @first_die = rand(1..10)
    @second_die = rand(1..10)
    render({ :template => "pages_templates/two_ten"})
  end

  def one_twenty
    @die = rand(1..20)
    render({ :template => "pages_templates/one_twenty"})
  end

  def five_four
    @first_die = rand(1..4)
    @second_die = rand(1..4)
    @third_die = rand(1..4)
    @fourth_die = rand(1..4)
    @fifth_die = rand(1..4)
    render({ :template => "pages_templates/five_four"})
  end

  def random
    @num_die = params.fetch("number_of_die").to_i
    @num_sides = params.fetch("number_of_sides").to_i

    @rolls = []

    @num_die.times do
      dice = rand(1..@num_sides)

      @rolls.push(dice)
    end

    render({ :template => "pages_templates/random"})
  end
end
