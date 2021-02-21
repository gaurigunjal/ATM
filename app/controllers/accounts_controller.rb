class AccountsController < ApplicationController
    def index 
        @accounts = Account.all 
    end

    def show 
        @account = Account.find(params[:id])
    end 

    def new 
        @account = Account.new
        @user = @account.user_id
    end

    def create 
        @account = Account.new(account_params)
        if @account.save
            redirect_to accounts_path
        else 
            render 'new'
        end
    end

    private
    def account_params
        params.require(:account).permit(:user_id, :account_number, :balance)
    end

end
