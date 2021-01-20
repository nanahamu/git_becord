class RecordsController < ApplicationController
    def index
        @records = Record.includes(:user).order("date DESC")
    end
    
    def new
    end
    
    def create
      record = Record.new(create_params)
      if record.save
        redirect_to controller: :records, action: :index
      else
        render "failure"
      end
    end
    
    def edit
        @record = Record.find(params[:id])
    end
    
    def update
        record = Record.find(params[:id])
        if record.user_id == current_user.id
            record.update(update_params)
            redirect_to controller: :records, action: :index
        end
    end
    
    def destroy
        Record.find(params[:id]).destroy
        redirect_to controller: :records, action: :index
    end
    
    private
    def create_params
        params.permit(:food, :date, :allergy).merge(user_id: current_user.id)
    end
    
    def update_params
        params.permit(:food, :date, :allergy).merge(user_id: current_user.id)
    end
end
