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
    @comment = Comment.new
    @duel = Duel.new
  end

  def create
    if @duel.save
      redirect_to root_path, notice: "Successfully added duel"
    else
      render :new, alert: "error in saving duel"
    end
  end

  def update
    if @duel.update(duels_params)
      redirect_to root_path, notice: "awesome sauce"
    else
      render :back, alert: 'yar their bee some issues'
    end
  end

  private def duels_params
    params.require(:duel).permit(:name, :character_one_name, :character_two_name, :character_one_body,
     :character_two_body, :character_one_avatar, :character_two_avatar, :character_one_votes, :character_two_votes)
  end
end
