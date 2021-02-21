class TransactionsController < ApplicationController

    def index
        @transactions = Transaction.all
    end

    def new
        @transaction = Transaction.new
      end

    def show 
        @transactions = Transaction.all
        @transaction = Transaction.find(params[:id])
        @account = @transaction.account
    end

    def create
        @transaction = Transaction.new(transaction_params)
        @account = @transaction.account

        if @transaction.save
            if @transaction.transaction_type == 'Withdraw'
                account = @transaction.account
                if account.balance > @transaction.amount
                    account.balance -= @transaction.amount
                    account.save
                    redirect_to transaction_path(@transaction)
                else
                    flash[:notice] = "You do not have sufficient balance"
                    render 'new'
                end
            elsif @transaction.transaction_type == 'Deposit'
                account = @transaction.account
                account.balance += @transaction.amount
                account.save
                @transaction.save
                redirect_to transaction_path(@transaction)
            end
        else 
            render 'new'
        end
    end

    private

    def transaction_params
        params.require(:transaction).permit(:amount,:transaction_type,:transaction_number,:account_id)
    end
end
