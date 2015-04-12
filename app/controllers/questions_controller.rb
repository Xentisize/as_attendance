class QuestionsController < ApplicationController
  before_action :set_passage, only: [:show, :edit, :update, :destroy]

  def index
    @passages = Passage.all
  end

  def show
  end

  def edit
  end

  def destroy
    @passage.destroy
    redirect_to passages_url, notice: "Passage deleted."
  end

  def new
    @passage = Passage.new
  end

  def create
    @passage = Passage.new(content: passage_params[:content])

    if @passage.save
      redirect_to passages_url, notice: "Passage saved."
    else
      render :new
    end
  end

  def upate
    if @passage.upate(passage_params)
      redirect_to passages_url, notice: "Passage updated."
    else
      render :edit
    end
  end

  private

  def set_passage
    @passage = Passage.find(params[:id])
  end

  def passage_params
    params.require(:passage).permit(:content)
  end

end
