# encoding: UTF-8
def armas
  [
    { 
      :id           => 0,
      :name         => "sin armas",
      :categoria    => "puños",
      :ataque       => 1,
      :ranuras      => 0,
      :diagonal     => true
    },
    { 
      :id           => 1,
      :name         => "espada corta",
      :categoria    => "filo",
      :ataque       => 2,
      :ranuras      => 2,
      :diagonal     => false
    },
    { 
      :id           => 2,
      :name         => "espada ancha",
      :categoria    => "filo",
      :ataque       => 3,
      :ranuras      => 3,
      :diagonal     => false
    },
    { 
      :id           => 3,
      :name         => "daga",
      :categoria    => "cuchillo",
      :ataque       => 1,
      :ranuras      => 1,
      :diagonal     => false
    },
    { 
      :id           => 4,
      :name         => "tomo",
      :categoria    => "libro",
      :ataque       => 1,
      :ranuras      => 4,
      :diagonal     => false
    },
    { 
      :id           => 5,
      :name         => "lanza",
      :categoria    => "asta",
      :ataque       => 2,
      :ranuras      => 3,
      :diagonal     => true
    },
    { 
      :id           => 6,
      :name         => "katar",
      :categoria    => "cuchillo",
      :ataque       => 2,
      :ranuras      => 2,
      :diagonal     => false
    },
    { 
      :id           => 7,
      :name         => "escudo",
      :categoria    => "escudo",
      :ataque       => 1,
      :ranuras      => 4,
      :diagonal     => false
    },
    { 
      :id           => 8,
      :name         => "bastón",
      :categoria    => "bastón",
      :ataque       => 1,
      :ranuras      => 4,
      :diagonal     => true
    },
    { 
      :id           => 9,
      :name         => "espada roja",
      :categoria    => "filo",
      :ataque       => 4,
      :ranuras      => 3,
      :diagonal     => true,
      :unico        => true,
    },
    { 
      :id           => 10,
      :name         => "espada larga",
      :categoria    => "filo",
      :ataque       => 3,
      :ranuras      => 3,
      :diagonal     => true
    },
    { 
      :id           => 11,
      :name         => "hacha",
      :categoria    => "filo",
      :ataque       => 2,
      :ranuras      => 4,
      :diagonal     => false
    },
    { 
      :id           => 12,
      :name         => "hacha a dos manos",
      :categoria    => "filo",
      :ataque       => 4,
      :ranuras      => 4,
      :diagonal     => false
    },
    { 
      :id           => 13,
      :name         => "maza",
      :categoria    => "contundentes",
      :ataque       => 2,
      :ranuras      => 4,
      :diagonal     => false
    },
    { 
      :id           => 14,
      :name         => "arco",
      :categoria    => "distancia",
      :ataque       => 2,
      :ranuras      => 2,
      :diagonal     => false
    },
    { 
      :id           => 15,
      :name         => "alabarda",
      :categoria    => "asta",
      :ataque       => 3,
      :ranuras      => 4,
      :diagonal     => true
    },
    { 
      :id           => 16,
      :name         => "cáliz",
      :categoria    => "copa",
      :ataque       => 1,
      :ranuras      => 6,
      :diagonal     => false
    },
    { 
      :id           => 17,
      :name         => "espada tumularia",
      :categoria    => "filo",
      :ataque       => 4,
      :ranuras      => 4,
      :diagonal     => true,
      :artefacto    => true,
    },
    { 
      :id           => 18,
      :name         => "ballesta",
      :categoria    => "distancia",
      :ataque       => 3,
      :ranuras      => 2,
      :diagonal     => false
    },
    { 
      :id           => 19,
      :name         => "alfanje",
      :categoria    => "filo",
      :ataque       => 2,
      :ranuras      => 2,
      :diagonal     => false
    },
    { 
      :id           => 20,
      :name         => "orbe",
      :categoria    => "distancia",
      :ataque       => 0,
      :ranuras      => 2,
      :diagonal     => true
    },
    { 
      :id           => 21,
      :name         => "báculo de la disformidad",
      :categoria    => "bastón",
      :ataque       => 1,
      :ranuras      => 4,
      :diagonal     => true,
      :legendario   => true,
    },
    { 
      :id           => 22,
      :name         => "estandarte de la noche",
      :categoria    => "bastón",
      :ataque       => 1,
      :ranuras      => 0,
      :diagonal     => true,
      :artefacto    => true,
    },
    { 
      :id           => 23,
      :name         => "báculo de las estaciones",
      :categoria    => "bastón",
      :ataque       => 2,
      :ranuras      => 4,
      :diagonal     => true,
      :legendario   => true,
    }
  ]
end

def arma id ; armas[id] end
def categorías ; armas.map{ |a| a[:categoria] }.uniq end