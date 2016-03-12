class AngusersController < ApplicationController
  layout 'angusers'
  def index
  end

  def new
    respond_to do |format|
      @anguser = Anguser.new
      format.html
      format.js
    end
  end
  def create
    @anguser = Anguser.new(anguser_params)

    respond_to do |format|
      if @anguser.save
        @angusers = Anguser.all
        format.html
        # { redirect_to angusers_path, notice: 'Anguser was successfully created.' }
        format.json
        format.js
        # { render action: 'show', status: :created, location: @anguser }
      else
        format.js { render :new }
        format.html { render :new }
        format.json { render json: @anguser.errors, status: :unprocessable_entity }
        # format.js {render :index}

      end
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_anguser
    @anguser = Anguser.find(params[:id])
  end
  def anguser_params
    params.require(:anguser).permit(:name, :status, :usertype)
  end
end
