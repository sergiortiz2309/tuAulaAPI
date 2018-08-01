class UpzsController < ApplicationController
    before_action :set_upz, only: [:show, :update, :destroy]

    # GET /todos
    def index
      @upzs = Upz.all
      json_response(@upzs)
    end
  
    # POST /todos
    def create
      @upz = Upz.create!(upz_params)
      json_response(@upz, :created)
    end
  
    # GET /todos/:id
    def show
      json_response(@upz)
    end
  
    # PUT /todos/:id
    def update
      @upz.update(upz_params)
      head :no_content
    end
  
    # DELETE /todos/:id
    def destroy
      @upz.destroy
      head :no_content
    end
  
    private
  
    def upz_params
      # whitelist params
      params.permit(:name)
    end
  
    def set_upz
      @upz = Upz.find(params[:id])
    end
end
