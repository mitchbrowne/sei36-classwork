class MixtapesController < ApplicationController
  before_action :check_for_login

  def new
    @mixtape = Mixtape.new
  end

  def create
    # One step alternative:
    # @current_user.mixtapes.create mixtape_params

    mixtape = Mixtape.create mixtape_params
    @current_user.mixtapes << mixtape # Association
    redirect_to root_path # IRL this would be redirect_to mixtape
  end

  private
  def mixtape_params
    params.require(:mixtape).permit(:title)
  end
end
