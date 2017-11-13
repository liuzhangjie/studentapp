class StumanagersController < ApplicationController
  before_action :set_stumanager, only: [:show, :edit, :update, :destroy]

  # GET /stumanagers
  # GET /stumanagers.json
  def index
    @stumanagers = Stumanager.all
  end

  # GET /stumanagers/1
  # GET /stumanagers/1.json
  def show
  end

  # GET /stumanagers/new
  def new
    @stumanager = Stumanager.new
  end

  # GET /stumanagers/1/edit
  def edit
  end

  # POST /stumanagers
  # POST /stumanagers.json
  def create
    @stumanager = Stumanager.new(stumanager_params)

    respond_to do |format|
      if @stumanager.save
        format.html { redirect_to @stumanager, notice: 'Stumanager was successfully created.' }
        format.json { render :show, status: :created, location: @stumanager }
      else
        format.html { render :new }
        format.json { render json: @stumanager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stumanagers/1
  # PATCH/PUT /stumanagers/1.json
  def update
    respond_to do |format|
      if @stumanager.update(stumanager_params)
        format.html { redirect_to @stumanager, notice: 'Stumanager was successfully updated.' }
        format.json { render :show, status: :ok, location: @stumanager }
      else
        format.html { render :edit }
        format.json { render json: @stumanager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stumanagers/1
  # DELETE /stumanagers/1.json
  def destroy
    @stumanager.destroy
    respond_to do |format|
      format.html { redirect_to stumanagers_url, notice: 'Stumanager was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stumanager
      @stumanager = Stumanager.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stumanager_params
      params.require(:stumanager).permit(:name, :deptname, :score)
    end
end
