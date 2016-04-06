class Professor < ActiveRecord::Base
  mount_uploader :foto, PictureUploader
  has_many :disciplinas_mestres
  has_many :disciplinas, :through => :disciplinas_mestres

  has_many :eventos

  validates_presence_of :nome, :message => "deve ser preenchido"
  validates_presence_of :matricula, :message => "deve ser preenchida"
  validates_presence_of :email, :message => "deve ser informado"
  validates_presence_of :foto, :message => "A foto é necessário"

  validates_uniqueness_of :nome, :message => "- nome já cadastrado"
  validates_uniqueness_of :matricula, :message => "-matrícula já informada"
  validates_uniqueness_of :celular, :message => "celular já informado"
  validates_uniqueness_of :email, :message => "e-mail já informadop"	
end
