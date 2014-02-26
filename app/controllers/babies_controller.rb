class BabiesController < ApplicationController

def new
  @baby = Baby.new 
  end

  def create

        @father = Father.find(params[:father_id])
    @baby = @father.babies.create(params[:baby])
    redirect_to father_path(@father)
  end

  def destroy
    @father = Father.find(params[:father_id])
    @baby = @father.babies.find(params[:id])
    @baby.destroy
    redirect_to father_path(@father)
  end

end
