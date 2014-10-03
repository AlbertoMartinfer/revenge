#!/usr/bin/ruby
# encoding: UTF-8

class Pet < Hash
  attr_accessor :id, :name, :torpe
  
  def initialize args
    args.each do |k,v|
      instance_variable_set("@#{k}".to_sym, v) unless v.nil?
    end
  end
  
  def personajes ; pet(self.id)[:personajes] end  
  def lacra      ; pet(self.id)[:lacra]      end
  def bono       ; pet(self.id)[:bono]       end
  def sex        ; pet(self.id)[:sex]        end
  def bicho      ; pet(self.id)[:name]       end # > "pitufo", "rata"  
  
  def nombre
    "#{self.name.capitalize}, #{self.sex ? "la" : "el"} #{self.bicho.capitalize}"
  end
  
  def img_path
    "'../../images/pets/#{self.bicho}.png'"
  end
  
end