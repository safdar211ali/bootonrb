class JsonuserdataController < ApplicationController
  before_action :set_jsonuserdata, only: [:show, :edit, :update, :destroy]

  # GET /jsonuserdata
  # GET /jsonuserdata.json
  def index
    @jsonuserdata = Jsonuserdata.all
    render json: @jsonuserdata
  end

  # GET /jsonuserdata/1
  # GET /jsonuserdata/1.json
  def show
  end

  # GET /jsonuserdata/new
  def new
    @jsonuserdata = Jsonuserdata.new
  end

  # GET /jsonuserdata/1/edit
  def edit
  end

  # POST /jsonuserdata
  # POST /jsonuserdata.json
  def create
    @jsonuserdata = jsonuserdata.new(jsonuserdata_params)

    respond_to do |format|
      if @jsonuserdata.save
        format.html
        format.js
        # { redirect_to @jsonuserdatum, notice: 'jsonuserdata was successfully created.' }
        format.json
        # { render action: 'show', status: :created, location: @jsonuserdatum }
      else
        format.html { render action: 'new' }
        format.json { render json: @jsonuserdata.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jsonuserdata/1
  # PATCH/PUT /jsonuserdata/1.json
  def update
    respond_to do |format|
      if @jsonuserdata.update(jsonuserdata_params)
        format.html { redirect_to @jsonuserdatum, notice: 'jsonuserdata was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @jsonuserdata.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jsonuserdata/1
  # DELETE /jsonuserdata/1.json
  def destroy
    @jsonuserdata.destroy
    respond_to do |format|
      format.html { redirect_to jsonuserdata_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jsonuserdatum
      @jsonuserdata = jsonuserdata.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jsonuserdata_params
      params.require(:jsonuserdata).permit(:name, :usertype, :status)
    end
end
