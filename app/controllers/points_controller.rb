class PointsController < ApplicationController
  def index
    @point = Point.select(:id, :message).find_by!(recent_point_id: params[:recent_point_id])

    render json: @point
  end
end
