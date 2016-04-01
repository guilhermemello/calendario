class Disciplina < ActiveRecord::Base
  has_many :disciplinas_mestres
  has_many :mestres, :through => :disciplinas_mestres
  has_many :eventos
  validates_presence_of :nome, :message => "- deve ser informado"

  validates_uniqueness_of :nome, :message => "Nome já informado"
	
end
