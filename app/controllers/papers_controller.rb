class PapersController < ApplicationController
  def index
  	@papers = Paper.all
  end

  def show
    @paper = Paper.find(params[:id])
  end

  def new
  	@paper = Paper.new
  end

  def edit
    @paper = Paper.find(params[:id])
  end

  def create
  	 @paper = Paper.new(paper_params)
     @paper.save
   if @paper.save   
     flash[:notice] = "Paper was saved successfully."
     redirect_to @paper
   else
     flash[:error] = "Error creating paper. Please try again."
     render new
    end
  end



 private

  # Strong Parameters
   def paper_params
     params.require(:paper).permit(:title, :body)
   end


 end
