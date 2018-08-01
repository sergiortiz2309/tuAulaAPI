class ModalidadsController < ApplicationController
    before_action :set_modalidad, only: [:show, :update, :destroy]

    # GET /todos
    def index
      @modalidads = Modalidad.all
      json_response(@modalidads)
    end
  
    # POST /todos
    def create
      @modalidad = Modalidad.create!(modalidad_params)
      json_response(@modalidad, :created)
    end
  
    # GET /todos/:id
    def show
      json_response(@modalidad)
    end
  
    # PUT /todos/:id
    def update
      @modalidad.update(modalidad_params)
      head :no_content
    end
  
    # DELETE /todos/:id
    def destroy
      @modalidad.destroy
      head :no_content
    end
  
    private
  
    def modalidad_params
      # whitelist params
      params.permit(:name)
    end
  
    def set_upz
      @modalidad = Modalidad.find(params[:id])
    end
end
