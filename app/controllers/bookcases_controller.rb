class BookcasesController < ApplicationController
  before_action :set_bookcase, only: %i[ show update destroy ]

  # GET /bookcases
  def index
    @bookcases = Bookcase.all
    render json: @bookcases
  end

  # GET /bookcases/1
  def show
    render json: @bookcase
  end

  # POST /bookcases
  def create
    @bookcase = Bookcase.new(bookcase_params)

    if @bookcase.save
      render json: @bookcase, status: :created, location: @bookcase
    else
      render json: @bookcase.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bookcases/1
  def update
    if @bookcase.update(bookcase_params)
      render json: @bookcase
    else
      render json: @bookcase.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bookcases/1
  def destroy
    @bookcase.destroy!
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_bookcase
    # Aqui era 'params.expect(:id)', o correto é 'params.require(:id)' ou só 'params[:id]'
    @bookcase = Bookcase.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def bookcase_params
    # Aqui era 'params.expect', o correto é 'params.require' e 'permit'
    params.require(:bookcase).permit(:limit)
  end
end
