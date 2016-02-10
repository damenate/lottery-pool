class FriendPoolsController < ApplicationController
  before_action :set_friend_pool, only: [:show, :edit, :update, :destroy]

  # GET /friend_pools
  # GET /friend_pools.json
  def index
    @friend_pools = FriendPool.all
  end

  # GET /friend_pools/1
  # GET /friend_pools/1.json
  def show
  end

  # GET /friend_pools/new
  def new
    @friend_pool = FriendPool.new
  end

  # GET /friend_pools/1/edit
  def edit
  end

  # POST /friend_pools
  # POST /friend_pools.json
  def create
    @friend_pool = FriendPool.new(friend_pool_params)

    respond_to do |format|
      if @friend_pool.save
        format.html { redirect_to @friend_pool, notice: 'Friend pool was successfully created.' }
        format.json { render :show, status: :created, location: @friend_pool }
      else
        format.html { render :new }
        format.json { render json: @friend_pool.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /friend_pools/1
  # PATCH/PUT /friend_pools/1.json
  def update
    respond_to do |format|
      if @friend_pool.update(friend_pool_params)
        format.html { redirect_to @friend_pool, notice: 'Friend pool was successfully updated.' }
        format.json { render :show, status: :ok, location: @friend_pool }
      else
        format.html { render :edit }
        format.json { render json: @friend_pool.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friend_pools/1
  # DELETE /friend_pools/1.json
  def destroy
    @friend_pool.destroy
    respond_to do |format|
      format.html { redirect_to friend_pools_url, notice: 'Friend pool was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friend_pool
      @friend_pool = FriendPool.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def friend_pool_params
      params.require(:friend_pool).permit(:name)
    end
end
