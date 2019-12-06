class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :set_corporacion_id

  # GET /users
  # GET /users.json
  def index
    @users = User.where(corporacion_id: @corporacion_id)
    #logger.info params[:corporacion_id]
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
    #logger.info params[:corporacion_id]
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create

    @user = User.new(user_params)

    corporacion_id = user_params[:corporacion_id]

    @user[:isAdmin] = 0
    #@user.corporacion_id = corporacion_id

    logger.info @user.as_json


    respond_to do |format|
      if @user.save
        format.html { redirect_to corporacion_users_path(corporacion_id), notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    corporacion_id = corporacion_params[:corporacion_id]
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to corporacion_users_path(corporacion_id), notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to corporacion_users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    def set_corporacion_id
      @corporacion_id = params[:corporacion_id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:nombre, :apellido, :rut, :correo, :contraseña, :sucursal, :filas,:corporacion_id)
    end

    def corporacion_params
      params.require(:user).permit(:corporacion_id)
    end
end
