class Vehicle
  attr_accessor :color, :tires, :doors, :windows

  def initialize(color:, tires:, doors:, windows:)
    @color = color
    @tires = tires
    @doors = doors
    @windows = windows
  end

  def self.get_speed
    "The vehicle is running 20 km/h"
  end
end

#herencia

class Tesla < Vehicle
  attr_accessor :type

  def initialize(type:, **options)
    super(**options)
    @type = type
  end
end

twingo = Vehicle.new(color: "Gray", tires: 4, doors: 2, windows: 4)
tesla = Tesla.new(type: "Mechanic", color: "Blue", tires: 4, doors: 4, windows: 6)

p tesla

# Tarea
# crear una clase person que tenga attributes como nombre, id y años, en base a los años deben calcular el año en que nacio
# crear una clase employee y clase estudent
# los attr de employee es salary y company, document
# 1. Crear empleado -> Tener en cuenta que si el nro_documento existe no lo puede dejar crear
# 2. Mostrar empleados
# 3. Mostrar empleado por id
# 4. buscar por company
# 5. Eliminar empleado
# 6. Calcular la fecha de nacimiento
# 7. Exit
