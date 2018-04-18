class PrintsController < ApplicationController
  before_action :set_print, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /prints
  def index
    @prints = Print.all
  end

  # GET /prints/1
  def show
  end

  # GET /prints/new
  def new
    @print = Print.new
  end

  # GET /prints/1/edit
  def edit
  end

  # POST /prints
  def create
    @print = Print.new(print_params)

    if @print.save
      redirect_to @print, notice: 'Print was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /prints/1
  def update
    if @print.update(print_params)
      redirect_to @print, notice: 'Print was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /prints/1
  def destroy
    @print.destroy
    redirect_to prints_url, notice: 'Print was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_print
      @print = Print.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def print_params
      params.require(:print).permit(:title, :description, :price, :in_stock, :image_url)
    end
end
