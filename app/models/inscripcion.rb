class Inscripcion < ApplicationRecord
  belongs_to :clase
  belongs_to :usuario
end
