class CategoriaController < ApplicationController
    before_action :set_categorium, only: [:show, :update, :destroy]

    # GET /todos
    def index
      @categoria = Categorium.all
      json_response(@categoria)
    end
  
    # POST /todos
    def create
      @categorium = Categorium.create!(categorium_params)
      json_response(@categorium, :created)
    end
  
    # GET /todos/:id
    def show
      json_response(@categorium)
    end
  
    # PUT /todos/:id
    def update
      @categorium.update(categorium_params)
      head :no_content
    end
  
    # DELETE /todos/:id
    def destroy
      @categorium.destroy
      head :no_content
    end
  
    private
  
    def categorium_params
      # whitelist params
      params.permit(:name)
    end
  
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end
end
