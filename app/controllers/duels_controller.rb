class DuelsController < ApplicationController
  load_and_authorize_resource param_method: :duels_params
  def new
  end

  def show
  end

  def destroy
    if @duel.destroy
      redirect_to root_path, notice: "Successfully deleted duel"
    else
      render :root_path, alert: "error in deleting duel"
    end
  end

  def index
    @comment = Comment.new(body: '')
    @duel = Duel.new
  end

  def create
    if @duel.save
      redirect_to root_path, notice: "Successfully added duel"
    else
      render :new
    end
  end

  def update
    if @duel.update(duels_params)
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js { render 'percent-bar' }
        flash[:notice] = "awesome sauce"
      end
    else
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js { render 'fail'}
        flash[:alert] = 'yar their bee some issues'
      end
    end
  end

  private def duels_params
    params.require(:duel).permit(:name, :character_one_name, :character_two_name, :character_one_body,
     :character_two_body, :character_one_avatar, :character_two_avatar, :character_one_votes, :character_two_votes)
  end
end
