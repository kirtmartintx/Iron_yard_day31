class SweetsController < ApplicationController
  before_action :set_sweet, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @sweets = Sweet.all
    respond_with(@sweets)
  end

  def show
    respond_with(@sweet)
  end

  def new
    @sweet = Sweet.new
    respond_with(@sweet)
  end

  def edit
  end

  def create
    @sweet = Sweet.new(sweet_params)
    @sweet.save
    respond_with(@sweet)
  end

  def update
    @sweet.update(sweet_params)
    respond_with(@sweet)
  end

  def destroy
    @sweet.destroy
    respond_with(@sweet)
  end

  private
    def set_sweet
      @sweet = Sweet.find(params[:id])
    end

    def sweet_params
      params.require(:sweet).permit(:name, :photo)
    end
end
