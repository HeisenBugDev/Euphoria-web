class Api::StatsController < Authentication::BaseAuthenticatedController
  respond_to :json
  def show
    respond_with({ :bacon => "hai" })
  end
end
