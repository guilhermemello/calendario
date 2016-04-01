class MestresController < ApplicationController
  before_action :set_mestre, only: [:show, :edit, :update, :destroy]

  # GET /mestres
  # GET /mestres.json
  def index    
    if params[:search]                        
      @mestres = Mestre.where("nome like ?", "%#{params[:search]}%")
      
    else 
      # @mestres = Mestre.all
      @mestres = Mestre.all.page(params['page']).per(5)
    end  
  end

  # GET /mestres/1
  # GET /mestres/1.json
  def show
  end

  # GET /mestres/new
  def new
    @mestre = Mestre.new
  end

  # GET /mestres/1/edit
  def edit
  end

  # POST /mestres
  # POST /mestres.json
  def create
    @mestre = Mestre.new(mestre_params)

    respond_to do |format|
      if @mestre.save
        format.html { redirect_to @mestre, notice: 'Mestre was successfully created.' }
        format.json { render :show, status: :created, location: @mestre }
      else
        format.html { render :new }
        format.json { render json: @mestre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mestres/1
  # PATCH/PUT /mestres/1.json
  def update
    respond_to do |format|
      if @mestre.update(mestre_params)
        format.html { redirect_to @mestre, notice: 'Mestre was successfully updated.' }
        format.json { render :show, status: :ok, location: @mestre }
      else
        format.html { render :edit }
        format.json { render json: @mestre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mestres/1
  # DELETE /mestres/1.json
  def destroy
    @mestre.destroy
    respond_to do |format|
      format.html { redirect_to mestres_url, notice: 'Mestre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mestre
      @mestre = Mestre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mestre_params
      params.require(:mestre).permit(:nome, :matricula, :celular, :email, :foto)
    end
end
