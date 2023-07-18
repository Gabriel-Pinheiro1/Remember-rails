class ContatcsController < ApplicationController
  before_action :set_contatc, only: %i[ show edit update destroy ]

  # GET /contatcs or /contatcs.json
  def index
    @contatcs = Contatc.all.paginate(page: params[:page], per_page: 5)
    
  end

  # GET /contatcs/1 or /contatcs/1.json
  def show
  end

  # GET /contatcs/new
  def new
    @contatc = Contatc.new
  end

  # GET /contatcs/1/edit
  def edit
  end

  # POST /contatcs or /contatcs.json
  def create
    @contatc = Contatc.new(contatc_params)

    respond_to do |format|
      if @contatc.save
        format.html { redirect_to contatc_url(@contatc), notice: "Contatc was successfully created." }
        format.json { render :show, status: :created, location: @contatc }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contatc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contatcs/1 or /contatcs/1.json
  def update
    respond_to do |format|
      if @contatc.update(contatc_params)
        format.html { redirect_to contatc_url(@contatc), notice: "Contatc was successfully updated." }
        format.json { render :show, status: :ok, location: @contatc }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contatc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contatcs/1 or /contatcs/1.json
  def destroy
    @contatc.destroy

    respond_to do |format|
      format.html { redirect_to contatcs_url, notice: "Contatc was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contatc
      @contatc = Contatc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contatc_params
      params.require(:contatc).permit(:name, :address, :email, :phone)
    end
end
