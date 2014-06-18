class QuizPoolsController < ApplicationController
  def new
    @quiz_pool = QuizPool.new
    @quiz_pool.quiz_pool_questions = [QuizPoolQuestion.new, QuizPoolQuestion.new]
  end
  
  def create
    @quiz_pool = QuizPool.new(params[:quiz_pool])
    if @quiz_pool.save
      redirect_to '/'
    else
      render :action => :new      
    end
  end
  
end
