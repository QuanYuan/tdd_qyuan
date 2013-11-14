class ShowsController < ApplicationController
  def index
    @shows = Show.all
  end

  def new
    @show = Show.new
  end

  def create
    show_params = params.require(:show).permit(:name, :picture)
    @show = Show.new(show_params)
    @success = @show.save

    if @success
      redirect_to shows_path
    else
      head(:unprocessable_entity)
    end
  end

  def destroy
    Show.find(params[:id]).destroy
    redirect_to shows_path
  end

  def show
    @show = Show.find(params[:id])
  end
end
