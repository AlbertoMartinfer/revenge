#!/usr/bin/ruby
# encoding: UTF-8

class Hero < Hash
  attr_accessor :id,         
    :name, :personaje, :jugador, :status, :muerto, :gender,
    :repu, :nivel, :cuerpo, :mente, :mov,        
    :pet,:montura,        
    :hechizos, :sombras, :sangres, :skills,   
    :armas, :armadura, :proteccions, :miscelaneas,           
    :profesion,  
    :piezas, :pociones, :pergaminos,
    :oro,:joyas,:runas, :gemas             

  def initialize args
    args.each do |k,v|
      instance_variable_set("@#{k}".to_sym, v) unless v.nil?
    end
  end
  
  # Custom meta-methods created by each item:
  (fields[1]+fields[2]+fields[3]).each do |f|
    define_method(f) do
  		((self.proteccions || []) + (self.miscelaneas || [])).detect { |item| item.fits == f }
    end
  end
  
  def potis # this must be refactored!
    potis = []
    self.pociones.each do |p|
      potis << Pocion.new(p)
    end
    potis
  end
  
  def tesoros
    self.gemas.each do |gem|
      puts gema(gem)
    end
    return 4
  end
  
  def cuerpo_base
    case self.clase
      when 'mago'     then return 4
      when 'elfo'     then return 6
      when 'tiefling' then return 4
      when 'enano'    then return 7
      when 'bárbaro'  then return 8
      else                 return 5
    end
  end
    
  def mente_base
    case self.clase
      when 'mago'     then return 6
      when 'elfo'     then return 4
      when 'tiefling' then return 4
      when 'enano'    then return 3
      when 'bárbaro'  then return 2
      else                 return 5
    end
  end
  
  def movimiento_base
    case self.clase
      when 'elfo'     then return 8
      when 'enano'    then return 6
      else                 return 7
    end
  end
  
  def clase
    case
      when    clase_enano.include?(self.personaje) then return 'enano'
      when     clase_elfo.include?(self.personaje) then return 'elfo'
      when clase_tiefling.include?(self.personaje) then return 'tiefling'
      when     clase_mago.include?(self.personaje) then return 'mago'
      when  clase_bárbaro.include?(self.personaje) then return 'bárbaro'
      when  clase_clérigo.include?(self.personaje) then return 'clérigo'
      when   clase_ladrón.include?(self.personaje) then return 'ladrón'
      else return "unknown"
    end
  end
  
  def habilidades # TODO: Mejorar este código.
    habilidades = []
    self.skills.each do |id|
      habilidades << Habilidad.new(send(self.personaje.gsub('señor de las bestias', 'beastlord'), id ))
    end
    return habilidades
  end
  
  def cacharros
    c = []
      if self.piezas
        self.piezas.each do |p|
          c << Pieza.new(:id => p)
        end
      end
    return c
  end
  
  def magias
    m = []
    if self.hechizos
      self.hechizos.each do |id|
        m << spell(id)
      end
    end
    if self.sombras
      self.sombras.each do |id|
        m << sombra(id)
      end
    end
    if self.sangres
      self.sangres.each do |id|
        m << sangre(id)
      end
    end
    return m
  end
  
  def elementos
    e = []
    self.magias.each do |m|
      e << m.elemento unless e.include?(m.elemento)
    end 
    return e
  end
  
  def human?        ; ['clérigo', 'ladrón', 'bárbaro', 'mago'].include?(self.clase) end  
  def raza          ; self.human? ? 'humano' : self.clase end
  def female?       ; self.sex == 'female' end
  def male?         ; self.sex == 'male' end
  def muggle?       ; self.magias.empty? end
  def desprotegido? ; self.protecciones.nil? end
  def pobre?        ; self.miscelaneas.nil? end
  def desprovisto?  ; self.pergaminos.nil? && self.pociones.nil? && self.piezas.nil?     end
  def sin_recursos  ; self.gemas.nil? && self.joyas.nil? && self.runas.nil? && self.nil? end
  def anillos       ; (self.miscelaneas || []).select { |m| m.fits == "anillo"  } end
  def amuletos      ; (self.miscelaneas || []).select { |m| m.fits == "amuleto" } end 
  def defensa       ; 1 end  
  def img_path      ; "'../images/personajes/#{self.genderize}.png'" end
  def big_path      ; "'../images/portraits/#{ self.name     }.png'" end
  def reputacion    ; self.repu || 0 end
  def movimiento    ; self.mov       end
    
  def genderize
    if self.gender == "female" 
      case self.clase
        when "elfo"     then return "elfa"
        when "mago"     then return "maga"
        when "bárbaro"  then return "bárbara"
        when "clérigo"  then return "clériga"
        when "ladrón"   then return "ladrona"
        when "tiefling" then return "tiefling-female"
        else return self.clase
      end
    else return self.clase
    end
  end
  
  def ataque
   total = 0
   self.armas.each do |a|
     total += 1 # Salvo que sea un escudo
   end
   return total
  end

  def rango
    total = 0
    self.armas.each do |a|
      total += 1 # Buscando arcos
    end
    return total
  end
  
end