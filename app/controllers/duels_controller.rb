class DuelsController < ApplicationController
  load_and_authorize_resource param_method: :duels_params
  def new
  end

  def show
  end

  def index
    sleep 1
  end

  def create
    @duel = Duel.create(duels_params)
    respond_to do |format|
      format.html { redirect_to duels_url}
      format.js
    end
  end

  private def duels_params
    params.require(:duel).permit(:name, :character_one_name, :character_two_name, :character_one_body,
     :character_two_body, :character_one_avatar, :character_two_avatar)

  end
end
