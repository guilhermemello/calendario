class DisciplinaMestre < ActiveRecord::Base
  belongs_to :disciplina
  belongs_to :mestre	
end
