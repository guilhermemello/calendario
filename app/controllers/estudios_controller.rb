class EstudiosController < ApplicationController
  before_filter :authorize
  before_action :set_estudio, only: [:show, :edit, :update, :destroy]
  
  # GET /estudios
  # GET /estudios.json
  def index
    if params[:search]                        
      @estudios = Estudio.where("nome like ?", "%#{params[:search]}%")
    else 
      #@estudios = Estudio.all
      @estudios = Estudio.all.page(params['page']).per(5)
    end
  end

  # GET /estudios/1
  # GET /estudios/1.json
  def show
  end

  # GET /estudios/new
  def new
    @estudio = Estudio.new
  end

  # GET /estudios/1/edit
  def edit
  end

  # POST /estudios
  # POST /estudios.json
  def create
    @estudio = Estudio.new(estudio_params)

    respond_to do |format|
      if @estudio.save
        format.html { redirect_to @estudio, notice: 'estudio was successfully created.' }
        format.json { render :show, status: :created, location: @estudio }
      else
        format.html { render :new }
        format.json { render json: @estudio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estudios/1
  # PATCH/PUT /estudios/1.json
  def update
    respond_to do |format|
      if @estudio.update(estudio_params)
        format.html { redirect_to @estudio, notice: 'estudio was successfully updated.' }
        format.json { render :show, status: :ok, location: @estudio }
      else
        format.html { render :edit }
        format.json { render json: @estudio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estudios/1
  # DELETE /estudios/1.json
  def destroy
    @estudio.destroy
    respond_to do |format|
      format.html { redirect_to estudios_url, notice: 'estudio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estudio
      @estudio = Estudio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estudio_params
      params.require(:estudio).permit(:nome, :endereco)
    end
end
