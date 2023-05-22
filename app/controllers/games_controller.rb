class GamesController < ApplicationController
  def new
    @letters = []
    alphabet = ('A'..'Z').to_a
    while @letters.length < 10
      letter = alphabet.sample
      next if @letters.include?(letter)

      @letters << letter
    end
  end

  def score
    @word = params[:word]
  end
end
