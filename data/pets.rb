﻿# encoding: UTF-8
def pets
  [
    { :id           => 0,
      :name         => "castor",
      :personajes   => ["enano"],
      :bono         => "+1 puertas secretas",
      :lacra        => "Al final de la partida, destruye un objeto aleatorio de madera.",
    },
    { :id           => 1,
      :name         => "gato",
      :personajes   => ["mago"],
      :bono         => "+1 movimiento",
      :lacra        => "Los lobos y los skavens obtienen odio hacia su portador.",
    },
    { :id           => 2,
      :name         => "mapache",
      :personajes   => ["bárbaro","enano"],
      :bono         => "+1 encontrar puertas secretas",
      :lacra        => "Te hace cosquillas: -1 desactivar trampas.",
    },
    { :id           => 3,
      :name         => "marmota",
      :personajes   => ["bárbaro","enano"],
      :bono         => "+1 bonificacion en comida y bebida",
      :sex          => "female",
      :lacra        => "Con 1 PM o menos, tu personaje se queda dormido.",
    },
    { :id           => 4,
      :name         => "rata",
      :personajes   => ["mago"],
      :bono         => "+1 PM",
      :lacra        => "-1 vs Peste",
      :sex          => "female",
      :lacra        => "-1 Reputación",
    },
    { :id           => 5,
      :name         => "murciélago",
      :personajes   => ["mago"],
      :bono         => "dagas/cuchillos: +1 robo de vida",
      :lacra        => "-2 Resistencia a la magia de sangre.",
    },
    { :id           => 6,
      :name         => "sapo",
      :personajes   => ["mago"],
      :bono         => "+1 PC",
      :lacra        => "-1 vs Peste",
    },
    { :id           => 7,
      :name         => "culebra",
      :personajes   => ["mago"],
      :bono         => "dagas/cuchillos: envenenan",
      :lacra        => "-1 Movimiento",
      :sex          => "female",
    },
    { :id           => 8,
      :name         => "búho",
      :personajes   => ["mago"],
      :bono         => "+1 hechizo",
      :lacra         => "Mientras el buho sea visible, todos los familiares roedores de los aliados se negaran a salir.",
    },
    { :id           => 9,
      :name         => "araña",
      :personajes   => ["mago"],
      :bono         => "+1 saltar fosos",
      :lacra        => "Todos los elfos tienen odio contra su portador.",
      :sex          => "female",
    },
    { :id           => 10,
      :name         => "urraca púrpura",
      :personajes   => ["mago"],
      :bono         => "+10 al oro del tesoro",
      :lacra        => "Roba la mitad de oro de la primera tirada de tesoro de un aliado",
      :sex          => "female",
    },
    { :id           => 11,
      :name         => "saprolín",
      :personajes   => ["elfo"],
      :bono         => "+1 PV",
      :lacra        => "Empiezas con un hechizo menos la partida.",
    },
    { :id           => 12,
      :name         => "duende",
      :personajes   => ["elfo"],
      :bono         => "+10 al oro del tesoro",
      :lacra        => "Se queda tu primer tesoro de tipo <¡oro!>",
    },
    { :id           => 13,
      :name         => "hada",
      :personajes   => ["elfo"],
      :bono         => "+1 hechizo élfico",
      :lacra        => "Muere inmediatamente si el portador recibe daño de fuego en una zona de efecto.",
    },
    { :id           => 14,
      :name         => "luciérnaga",
      :personajes   => ["elfo"],
      :bono         => "+1 detectar trampas",
      :lacra        => "-1 PM al iniciar el reto",
      :sex          => "female",
    },
    { :id           => 15,
      :name         => "mariposa",
      :personajes   => ["elfo"],
      :bono         => "+1 resistencia (todo)",
      :lacra         => "Si muere el personaje, ella tambien muere.",
      :sex          => "female",
    },
    { :id           => 16,
      :name         => "hurón",
      :personajes   => ["bárbaro","enano"],
      :bono         => "+1 movimiento",
      :lacra        => "Mordisquear los piés: -1 PC al iniciar el reto",
    },
    { :id           => 17,
      :name         => "ardilla",
      :personajes   => ["bárbaro","enano"],
      :bono         => "+1 PM",
      :sex          => "female",
      :lacra        => "x2 Fuerza del primer ataque mental de la partida que recibas.",
    },
    { :id           => 18,
      :name         => "comadreja",
      :personajes   => ["bárbaro","enano"],
      :bono         => "+1 resistencia (peste)",
      :lacra        => "Roba el primer tesoro de comida del reto, podrida o no.",
      :sex          => "female",
    },
    { :id           => 19,
      :name         => "pitufo",
      :personajes   => ["elfo"],
      :bono         => "+1 PM",
      :lacra        => "No puedes realizar magia de un elemento aleatorio determinado al inicio de cada partida.",
    },
    { :id           => 20,
      :name         => "diablillo chillón",
      :personajes   => ["tiefling"],
      :bono         => "+1 Punto de Sombra",
      :lacra         => "1/reto el Malvado Brujo podra hacer repetir la tirada de locura que le interese",
    },
    { :id           => 21,
      :name         => "mariquita",
      :personajes   => ["elfo", "enano"],
      :bono         => "+1 PM al saltar con éxito un foso (solo cuenta el primer salto)",
      :lacra        => "El personaje no puede enamorarse de héroes de sexo opuesto.",
      :sex          => "female",
    },
    { :id           => 22,
      :name         => "griemling",
      :personajes   => ["enano", "mago"],
      :bono         => "+1 PC y cuando el personaje es objetivo de un hechizo de agua, otro jugador aleatorio obtiene un griemling como familiar.",
      :lacra        => "Si la partida es nocturna, la comida resta PM en lugar de añadir PC/PM.",
    },
    { :id           => 23,
      :name         => "estorbito",
      :personajes   => ["bárbaro", "mago"],
      :bono         => "Cuando un hechizo fuera a causarte la muerte, mata al estorbito en su lugar.",
      :lacra        => "Cuando un golpe de arma fuera a causarte la muerte, no puedes utilizar gloria del héroe.",
    }
  ]
end

def pet id ; pets[id] end