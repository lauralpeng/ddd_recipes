class CombinationsController < ApplicationController
  before_action :set_combination, only: [:show, :edit, :update, :destroy]

  # GET /combinations
  def index
    @combinations = Combination.all
  end

  # GET /combinations/1
  def show
  end

  # GET /combinations/new
  def new
    @combination = Combination.new
  end

  # GET /combinations/1/edit
  def edit
  end

  # POST /combinations
  def create
    @combination = Combination.new(combination_params)

    if @combination.save
      redirect_to @combination, notice: 'Combination was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /combinations/1
  def update
    if @combination.update(combination_params)
      redirect_to @combination, notice: 'Combination was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /combinations/1
  def destroy
    @combination.destroy
    redirect_to combinations_url, notice: 'Combination was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_combination
      @combination = Combination.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def combination_params
      params.require(:combination).permit(:ingredient_id, :quantity, :dish_id)
    end
end
