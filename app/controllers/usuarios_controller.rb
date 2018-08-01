class UsuariosController < ApplicationController
    before_action :set_usuario, only: [:show, :update, :destroy]

    # GET /todos
    def index
      @usuarios = Usuario.all
      json_response(@usuarios)
    end
  
    # POST /todos
    def create
      @usuario = Usuario.create!(usuario_params)
      json_response(@usuario, :created)
    end
  
    # GET /todos/:id
    def show
      json_response(@usuario)
    end
  
    # PUT /todos/:id
    def update
      @usuario.update(usuario_params)
      head :no_content
    end
  
    # DELETE /todos/:id
    def destroy
      @usuario.destroy
      head :no_content
    end
  
    private
  
    def usuario_params
      # whitelist params
      params.permit(:idUsuario, :nombre, :apellido, :email, :password, :fechaDeNacimiento, :direccion, :telefono)
    end
  
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end
end
