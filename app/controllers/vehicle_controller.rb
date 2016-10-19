class VehicleController < ApplicationController
  def index
  end

  def create
    if params.has_key?(:make) && params.has_key?(:year)
      new_car = Vehicle.new(params[:make], params[:year])
      session[:new_car] = new_car.to_yaml
      redirect_to "/vehicle/car_status"
    else
      render 'vehicle/index'
    end
      # render "vehicle/index" #Why do we need render here? Why does the page break if we don't have render here. For each method we need a view file. Since we called this instance variable in index.html.erb,we need to tell index.html.erb to look/load this method instead.
  end

  def car_status
    @new_car = YAML.load(session[:new_car])
  end

  def accelerate
    @new_car = YAML.load(session[:new_car])
    @new_car.accelerate
    session[:new_car] = @new_car.to_yaml
    render '/vehicle/car_status'
  end

  def brake
    @new_car = YAML.load(session[:new_car])
    @new_car.brake
    session[:new_car] = @new_car.to_yaml
    render '/vehicle/car_status'
  end

  def lights
    @new_car = YAML.load(session[:new_car])
    @new_car.toggle
    session[:new_car] = @new_car.to_yaml
    render '/vehicle/car_status'
  end

  def set_parking_brake
    @new_car = YAML.load(session[:new_car])
    @new_car.set_parking_brake
    session[:new_car] = @new_car.to_yaml
    render '/vehicle/car_status'
  end
end
