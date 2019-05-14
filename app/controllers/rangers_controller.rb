class RangersController < ApplicationController

  def new
    # we might have a park_id param, if we are calling this
	  #  controller method from within a nested route
    @park_id = params[:park_id]
    @parks = Park.all
    @rangers = Ranger.all
  end

  def create
    @ranger = Ranger.new(ranger_params)

    @ranger.save
    redirect_to @ranger
  end

  def show
    # deal with the case that we are trying to get a ranger for a park that doesn't exist

    # if params[:park_id].to_i != @ranger.park.id
    #   # do something

    # end

    @ranger = Ranger.find(params[:id])
  end

private

  def ranger_params
    params.require(:ranger).permit(:name, :park_ids => [])
  end
end