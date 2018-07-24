class AccountsController < ApplicationController

  def create
    @account = Account.new(user_params)

    if @account.save
      render json: {id: @account.id, login: @account.login}
    else
      render json: {status: 'Error', message: 'Error'}, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:login, :email, :password, :password_confirmation)
  end
end
