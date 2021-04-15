module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end

    module Nadador
        def nadar
            'Estoy nadando!'
        end
        def sumergir
            'glu glub glub glu'
        end
    end

    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end

module Alimentacion
    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end

    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end
end


class Animal
    attr_reader :nombre # Define solo un método getter
    def initialize(nombre)
        @nombre = nombre
    end
end

class Ave < Animal
    exclude Volador
end

class Mamifero < Animal
    exclude Caminante
end

class Insecto < Animal
end

class Pinguino < Ave
    include Caminante
end

class Paloma < Ave
end

class Pato < Ave
    include Nadador
    include Caminante
    include Herviboro
end

class Perro < Mamifero
    include Nadador
    include Caminante
end

class Gato < Mamifero
    include Caminante
    include Carnivoro
end

class Vaca < Mamifero
    include Caminante
    include Herviboro
end

class Mosca < Insecto
    include Volador
end

class Mariposa < Insecto
    include Volador
end

class Abeja < Insecto
    include Volador
end