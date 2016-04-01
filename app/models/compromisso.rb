class Compromisso < ActiveRecord::Base
  validates_presence_of :titulo, :message => " - deve ser preenchido"
  validates_presence_of :texto, :message => "deve ser preenchido"	
end
