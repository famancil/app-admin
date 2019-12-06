class LoginController < ApplicationController
  def index
  	@user = User.new
  end

  def login
  	logger.info user_params
  	correo = user_params[:correo]
  	password = user_params[:contraseña]

  	if correo == 'admin@admin.cl' and password == '123456'
  		redirect_to corporacions_path, notice: 'Inicio de sesión exitosa.'
  	else
  		@user = User.new
  		@user.errors.add(:base, :is_invalid,
  message: "Credenciales invalidos")
  		render :index
  	end

  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:correo, :contraseña)
    end
end
