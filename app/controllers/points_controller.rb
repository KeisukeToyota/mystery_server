class PointsController < ApplicationController
  def index
    @point = Point.find_by!(recent_point_id: params[:recent_point_id])

    render json: Point.select(:id, :message).find_by!(recent_point_id: params[:recent_point_id]) if send_message?(@point.longitude, @point.latitude)
  end

  private

  def send_message?(lng, lat)
    y1 = lng * Math::PI / 180
    x1 = lat * Math::PI / 180
    y2 = params[:longitude].to_f * Math::PI / 180
    x2 = params[:latitude].to_f * Math::PI / 180
    earth_r = 6378.14
    earth_r * Math.acos(Math.cos(x1) * Math.cos(x2) * Math.cos(y2 - y1) + Math.sin(x1) * Math.sin(x2)) < 0.5
  end
end
