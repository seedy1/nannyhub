class RegistrationsController < Devise::RegistrationsController

    private

    def sign_up_params
        params.require(:user).permit(:fullname, :email, :password, :phone, :role, :city, :country)
    end

    def account_update_params
        params.require(:user).permit(:fullname, :email, :password, :current_password, :phone, :role, :city, :country)
    end

end
