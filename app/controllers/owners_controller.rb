class OwnersController < ApplicationController
  def destroy
    @owner = Owner.find params[:id]
    @owner.destroy

    render status: :no_content
  end

  def update
    @owner = Owner.find params[:id]
    @owner.update(
      name: params[:name],
      age: params[:age],
    )

    render json: { owner: @owner }, status: :ok
  end

  def create
    @owner = Owner.create(
      name: params[:name],
      age: params[:age],
    )

    render json: { owner: @owner }, status: :created
  end

  def show
    @owner = Owner.find params[:id]

    render json: { owner: @owner }
  end

  def index
    @owners = Owner.all

    render json: { owners: @owners }
  end
end
