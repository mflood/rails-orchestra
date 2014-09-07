class PerformanceTypesController < ApplicationController
  before_action :set_performance_type, only: [:show, :edit, :update, :destroy]

  # GET /performance_types
  # GET /performance_types.json
  def index
    @performance_types = PerformanceType.all
  end

  # GET /performance_types/1
  # GET /performance_types/1.json
  def show
  end

  # GET /performance_types/new
  def new
    @performance_type = PerformanceType.new
  end

  # GET /performance_types/1/edit
  def edit
  end

  # POST /performance_types
  # POST /performance_types.json
  def create
    @performance_type = PerformanceType.new(performance_type_params)

    respond_to do |format|
      if @performance_type.save
        format.html { redirect_to @performance_type, notice: 'Performance type was successfully created.' }
        format.json { render :show, status: :created, location: @performance_type }
      else
        format.html { render :new }
        format.json { render json: @performance_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /performance_types/1
  # PATCH/PUT /performance_types/1.json
  def update
    respond_to do |format|
      if @performance_type.update(performance_type_params)
        format.html { redirect_to @performance_type, notice: 'Performance type was successfully updated.' }
        format.json { render :show, status: :ok, location: @performance_type }
      else
        format.html { render :edit }
        format.json { render json: @performance_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /performance_types/1
  # DELETE /performance_types/1.json
  def destroy
    @performance_type.destroy
    respond_to do |format|
      format.html { redirect_to performance_types_url, notice: 'Performance type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_performance_type
      @performance_type = PerformanceType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def performance_type_params
      params.require(:performance_type).permit(:name, :notes)
    end
end
