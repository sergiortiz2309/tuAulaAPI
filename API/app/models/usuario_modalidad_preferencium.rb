class UsuarioModalidadPreferencium < ApplicationRecord
  belongs_to :modalidad
  belongs_to :usuario
end
