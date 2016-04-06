class Estudio < ActiveRecord::Base
  validates_presence_of :nome, :message => "- deve ser informado"
  validates_presence_of :endereco, :message => "- deve ser informado"

  has_many :eventos

  validates_uniqueness_of :endereco, :message => "Endereço já informado"	
end
