class Api::StatsController < Authentication::BaseAuthenticatedController

  respond_to :json

  def show
    respond_with(Stat.all)
  end

  def create
  end
end
