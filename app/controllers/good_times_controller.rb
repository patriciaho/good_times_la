class GoodTimesController < ApplicationController
  before_action :set_good_time, only: [:show, :edit, :update, :destroy]

  # GET /good_times
  # GET /good_times.json
  def index
    @good_times = GoodTime.all
  end

  # GET /good_times/1
  # GET /good_times/1.json
  def show
    @comments = @good_time.comments.all
    @comment = @good_time.comments.build
  end

  # GET /good_times/new
  def new
    @good_time = GoodTime.new
  end

  # GET /good_times/1/edit
  def edit
  end

  # POST /good_times
  # POST /good_times.json
  def create
    @good_time = GoodTime.new(good_time_params)

    respond_to do |format|
      if @good_time.save
        format.html { redirect_to @good_time, notice: 'Good time was successfully created.' }
        format.json { render :show, status: :created, location: @good_time }
      else
        format.html { render :new }
        format.json { render json: @good_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /good_times/1
  # PATCH/PUT /good_times/1.json
  def update
    respond_to do |format|
      if @good_time.update(good_time_params)
        format.html { redirect_to @good_time, notice: 'Good time was successfully updated.' }
        format.json { render :show, status: :ok, location: @good_time }
      else
        format.html { render :edit }
        format.json { render json: @good_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /good_times/1
  # DELETE /good_times/1.json
  def destroy
    @good_time.destroy
    respond_to do |format|
      format.html { redirect_to good_times_url, notice: 'Good time was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_good_time
      @good_time = GoodTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def good_time_params
      params.require(:good_time).permit(:name, :description, :picture, :visit)
    end
end
