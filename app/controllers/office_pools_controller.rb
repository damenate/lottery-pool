class OfficePoolsController < ApplicationController
  before_action :set_office_pool, only: [:show, :edit, :update, :destroy]

  # GET /office_pools
  # GET /office_pools.json
  def index
    @office_pools = OfficePool.all
  end

  # GET /office_pools/1
  # GET /office_pools/1.json
  def show
  end

  # GET /office_pools/new
  def new
    @office_pool = OfficePool.new
  end

  # GET /office_pools/1/edit
  def edit
  end

  # POST /office_pools
  # POST /office_pools.json
  def create
    @office_pool = OfficePool.new(office_pool_params)

    respond_to do |format|
      if @office_pool.save
        format.html { redirect_to @office_pool, notice: 'Office pool was successfully created.' }
        format.json { render :show, status: :created, location: @office_pool }
      else
        format.html { render :new }
        format.json { render json: @office_pool.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /office_pools/1
  # PATCH/PUT /office_pools/1.json
  def update
    respond_to do |format|
      if @office_pool.update(office_pool_params)
        format.html { redirect_to @office_pool, notice: 'Office pool was successfully updated.' }
        format.json { render :show, status: :ok, location: @office_pool }
      else
        format.html { render :edit }
        format.json { render json: @office_pool.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /office_pools/1
  # DELETE /office_pools/1.json
  def destroy
    @office_pool.destroy
    respond_to do |format|
      format.html { redirect_to office_pools_url, notice: 'Office pool was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_office_pool
      @office_pool = OfficePool.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def office_pool_params
      params.require(:office_pool).permit(:name)
    end
end
