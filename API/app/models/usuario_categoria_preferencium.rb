class UsuarioCategoriaPreferencium < ApplicationRecord
  belongs_to :categoria
  belongs_to :usuario
end
