class CustomersController < ApplicationController
    before_action :find_customer,except:[:new,:create,:index]

    def index
        @customers = Customer.all
    end

    def show 
    end

    def edit 
    end

    def update
        Customer.update(email: params[:customer][:email], password: params[:customer][:password])
        redirect_to @customer
    end
    
    def new
        @customer = Customer.new
    end
      
    def create
        @customer = Customer.create(email: params[:customer][:email], password: params[:customer][:password])
        render json: @customer
    end
    
    def destroy
        @customer.destroy
        redirect_to root_path
    end
    def find_customer
        @customer = Customer.find(params[:id])
    end  
end
