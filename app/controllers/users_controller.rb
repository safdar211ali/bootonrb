class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy,:delete]
  # GET /users
  # GET /users.json
  def index
    @users = User.all
    render json:@users
    # @user = User.new
    # respond_to do |format|
    #   format.html
    #   format.js
    # end
end
  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    respond_to do |format|
    @user = User.new
     format.html
      format.js
    end
  end

  # GET /users/1/edit
  def edit
    respond_to do |format|
      format.html
      format.js
    end
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        @users = User.all
        format.html
        # { redirect_to users_path, notice: 'User was successfully created.' }
        format.json
        format.js
        # { render action: 'show', status: :created, location: @user }
      else
        format.js { render :new }
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
        # format.js {render :index}

      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update

    respond_to do |format|
      if @user.update(user_params)
        @users = User.all
        format.html
        # { redirect_to users_path, notice: 'User was successfully updated.' }
        format.json
        # { head :no_content }
        format.js
      else
        format.js {render :new}
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }

      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
def delete
  @users = User.all
  respond_to do |format|
    format.html
      format.js
  end
end
  def destroy
    @user.destroy
    @users = User.all
    respond_to do |format|
      format.js
      format.html
      # { redirect_to users_url, notice: 'User was successfully Deleted.'  }
      format.json
      # { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :status, :usertype)
    end
end
