class QuizsController < ApplicationController

  def index
    @quizs = Quiz.all
  end

  def new
    @quiz = Quiz.new
  end

  def create
    Quiz.create(quiz_params)
    redirect_to root_path
  end

  private

  def quiz_params
    params.require(:quizzes).permit(:make, :model, :seats)
  end
end
