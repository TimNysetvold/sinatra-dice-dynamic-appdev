require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/:number_of_dice/:dice_sides") do
  @rolls = []

  @count_dice = params.fetch("number_of_dice").to_i
  @side_dice = params.fetch("dice_sides").to_i

  @count_dice.times do
    die = rand(1..@side_dice)

    @rolls.push(die)
  end

  erb(:flexible)
end
