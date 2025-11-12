import RuedasDAO.consultarRuedaPorId
import java.sql.Connection
import java.sql.DriverManager
import java.sql.SQLException
import java.util.InputMismatchException


const val URL_BD ="jdbc:mysql://100.25.144.241:3306/cars"
const val USER="guille"
const val PASS="guille"


// Obtener conexión
fun getConnection(): Connection? {
    return try {
        DriverManager.getConnection(URL_BD,USER,PASS)
    } catch (e: SQLException) {
        e.printStackTrace()
        null
    }
}

fun main() {

    var itera = true
    do {
        println()
        println("   Selecciona una opcion: ")
        println("1. Menu Coches")
        println("2. Menu Ruedas")
        println("3. Menu Repuestos")
        println("4. Transaccion crear coche")
        println("5. Menu funciones de consulta")
        println("6. Procedimiento para listar coches")
        println("7. Procedimiento para suministrar ruedas")
        println("8. Salir")
        try {
            val select: Int = isInt()
            when (select) {
                1 -> {
                    menuCoche()
                }
                2 -> {
                    menuRueda()

                }
                3 -> {
                    menuRepuesto()
                }
                4 -> {
                    println("Lista de ruedas:")
                    RuedasDAO.listarRuedas().forEach {
                        println(" - id -> [${it.id_rueda}] tipo:${it.tipo}, precio:${it.precio}, pulgadas:${it.pulgadas}, cantidad:${it.cantidad} ")
                    }
                    print("ID del tipo de rueda a usar: ")
                    val ruedaID: Int = isInt()
                    print("Nombre del modelo para el nuevo coche: ")
                    val modelo: String = readLine().orEmpty()
                    print("Nombre de la marca para el nuevo coche: ")
                    val marca: String = readLine().orEmpty()
                    print("Consumo(Double) para el nuevo coche: ")
                    val consumo: Double = isDouble()
                    print("Potencia para el nuevo coche: ")
                    val hp: Int = isInt()
                    CochesDAO.crearCoche(Coche(modelo = modelo, marca = marca, consumo = consumo, hp = hp ),ruedaID)

                }
                5 -> {
                    menuFunciones()
                }
                6 -> {
                    print("Dame la potencia minima, para listar coches mayorres a dicha potencia: ")
                    val potencia: Int = isInt()
                    listar_coches_de_mayor_potencia(potencia)
                }
                7 -> {
                    print("Dame el número de ruedas que quieras suministrar: ")
                    val ruedas: Int = isInt()
                    suministrar_mas_ruedas(ruedas)
                }

                8 -> {
                    itera = false
                }

                else -> {
                    println("Opcion no valida. Por favor, selecciona una opcion del 1 al 8.")
                }
            }

        } catch (e: InputMismatchException) {
            println("Error: Debes introducir un numero valido.")
        } catch (e: Exception) {
            println("Error: ${e.message}")
        }
    } while (itera)



}

fun menuFunciones() {
    var itera = true
    do {
        println()
        println("   Selecciona una opcion: ")
        println("1. Valor total de repuesto")
        println("2. Valor total de rueda")
        println("3. Valor de la tabla repuestos")
        println("4. Valor de la tabla ruedas")
        println("5. Salir")

        try {
            val select: Int = isInt()
            when (select) {
                1 -> {

                }
                2 -> {


                }
                3 -> {


                }
                4 -> {



                }
                5 -> {
                    itera = false
                }

                else -> {
                    println("Opcion no valida. Por favor, selecciona una opcion del 1 al 5.")
                }
            }

        } catch (e: InputMismatchException) {
            println("Error: Debes introducir un numero valido.")
        } catch (e: Exception) {
            println("Error: ${e.message}")
        }
    } while (itera)
}

fun menuCoche() {

    var itera = true
    do {
        println()
        println("   Selecciona una opcion: ")
        println("1. Listar Coches")
        println("2. Consultar Coche por id")
        println("3. Insertar Coche por id")
        println("4. Actualizar Coche por id")
        println("5. Eliminar Coche por id")
        println("6. Salir")

        try {
            val select: Int = isInt()
            when (select) {
                1 -> {
                    println("Lista de coches:")
                    CochesDAO.listarCoches().forEach {
                        println(" - id -> [${it.id_coche}] modelo:${it.modelo}, marca:${it.marca}, consuo:${it.consumo}, potencia:${it.hp} ")
                    }                }
                2 -> {
                    print("Dame el id: ")
                    val id: Int = isInt()
                    val Coche=CochesDAO.consultarCochePorId(id)
                    println(" - id -> [${Coche?.id_coche}] modelo:${Coche?.modelo}, marca:${Coche?.marca}, consuo:${Coche?.consumo}, potencia:${Coche?.hp} ")


                }
                3 -> {
                    print("Nombre del modelo para el nuevo coche: ")
                    val modelo: String = readLine().orEmpty()
                    print("Nombre de la marca para el nuevo coche: ")
                    val marca: String = readLine().orEmpty()
                    print("Consumo(Double) para el nuevo coche: ")
                    val consumo: Double = isDouble()
                    print("Potencia para el nuevo coche: ")
                    val hp: Int = isInt()
                    CochesDAO.insertarCoche(Coche(modelo = modelo, marca = marca, consumo = consumo, hp = hp ))

                }
                4 -> {
                    print("Dame el id del Coche a actualizar: ")
                    val id: Int = isInt()
                    if (CochesDAO.comprobarCochePorId(id)){
                        print("Nombre del modelo a modificar: ")
                        val modelo: String = readLine().orEmpty()
                        print("Nombre de la marca a modificar: ")
                        val marca: String = readLine().orEmpty()
                        print("Consumo(Double) a modificar: ")
                        val consumo: Double = isDouble()
                        print("Potencia a modificar: ")
                        val hp: Int = isInt()
                        CochesDAO.actualizarCoche(Coche(id,modelo = modelo, marca = marca, consumo = consumo, hp = hp ))
                    }else{
                        println("Id no esxiste")
                    }



                }
                5 -> {
                    print("Dame el id del Coche a eliminar: ")
                    val id: Int = isInt()
                    CochesDAO.eliminarCoche(id)

                }
                6 -> {
                    itera = false
                }

                else -> {
                    println("Opcion no valida. Por favor, selecciona una opcion del 1 al 6.")
                }
            }

        } catch (e: InputMismatchException) {
            println("Error: Debes introducir un numero valido.")
        } catch (e: Exception) {
            println("Error: ${e.message}")
        }
    } while (itera)




}

fun menuRueda() {

    var itera = true
    do {
        println()
        println("   Selecciona una opcion: ")
        println("1. Listar Ruedas")
        println("2. Consultar Rueda por id")
        println("3. Insertar Rueda por id")
        println("4. Actualizar Rueda por id")
        println("5. Eliminar Rueda por id")
        println("6. Salir")

        try {
            val select: Int = isInt()
            when (select) {
                1 -> {
                    println("Lista de ruedas:")
                    RuedasDAO.listarRuedas().forEach {
                        println(" - id -> [${it.id_rueda}] tipo:${it.tipo}, precio:${it.precio}, pulgadas:${it.pulgadas}, cantidad:${it.cantidad} ")
                    }              }
                2 -> {
                    print("Dame el id: ")
                    val id: Int = isInt()
                    val Rueda=RuedasDAO.consultarRuedaPorId(id)
                    println(" - id -> [${Rueda?.id_rueda}] tipo:${Rueda?.tipo}, precio:${Rueda?.precio}, pulgadas:${Rueda?.pulgadas}, cantidad:${Rueda?.cantidad} ")

                }
                3 -> {
                    print("Nombre del tipo para la nueva rueda: ")
                    val tipo: String = readLine().orEmpty()
                    print("Precio(Double) para la nueva rueda: ")
                    val precio: Double = isDouble()
                    print("Pulgadas(Double) para la nueva rueda: ")
                    val pulgadas: Double = isDouble()
                    print("Cantidad para la nueva rueda: ")
                    val cantidad: Int = isInt()
                    RuedasDAO.insertarRueda(Rueda(tipo = tipo, precio = precio,
                        pulgadas = pulgadas, cantidad = cantidad ))

                }
                4 -> {
                    print("Dame el id de la rueda a actualizar: ")
                    val id: Int = isInt()
                    if (RuedasDAO.comprobarRuedaPorId(id)){
                        print("tipo a modificar: ")
                        val tipo: String = readLine().orEmpty()
                        print("precio(Double) a modificar: ")
                        val precio: Double = isDouble()
                        print("pulgadas(Double) a modificar: ")
                        val pulgadas: Double = isDouble()
                        print("cantidad a modificar: ")
                        val cantidad: Int = isInt()
                        RuedasDAO.actualizarRueda(Rueda(id,tipo = tipo,
                            precio = precio, pulgadas = pulgadas, cantidad = cantidad ))
                    }else{
                        println("Id no existe")
                    }



                }
                5 -> {
                    print("Dame el id de la rueda a eliminar: ")
                    val id: Int = isInt()
                    RuedasDAO.eliminarRueda(id)

                }
                6 -> {
                    itera = false
                }

                else -> {
                    println("Opcion no valida. Por favor, selecciona una opcion del 1 al 5.")
                }
            }

        } catch (e: InputMismatchException) {
            println("Error: Debes introducir un numero valido.")
        } catch (e: Exception) {
            println("Error: ${e.message}")
        }
    } while (itera)


}
fun menuRepuesto() {

    var itera = true
    do {
        println()
        println("   Selecciona una opcion: ")
        println("1. Listar repuestos")
        println("2. Consultar repuesto por id")
        println("3. Insertar repuesto por id")
        println("4. Actualizar repuesto por id")
        println("5. Eliminar repuesto por id")
        println("6. Salir")

        try {
            val select: Int = isInt()
            when (select) {
                1 -> {
                    println("Lista de repuestos:")
                    RepuestoDAO.listarRepuestos().forEach {
                        println(" - id -> [${it.id_repuesto}] localizacion:${it.localizacion}, precio:${it.precio}, cantidad:${it.cantidad}, nombre:${it.nombre} ")
                    }
                }
                2 -> {
                    print("Dame el id: ")
                    val id: Int = isInt()
                    val repuesto = RepuestoDAO.consultarRepuestoPorId(id)
                    println(" - id -> [${repuesto?.id_repuesto}] localizacion:${repuesto?.localizacion}, precio:${repuesto?.precio}, cantidad:${repuesto?.cantidad}, nombre:${repuesto?.nombre} ")
                }
                3 -> {
                    print("localizacion del nuevo repuesto: ")
                    val localizacion: String = readLine().orEmpty()
                    print("Precio(Double) para la nuevo repuesto: ")
                    val precio: Double = isDouble()
                    print("Cantidad para la nuevo repuesto: ")
                    val cantidad: Int = isInt()
                    print("nombre del nuevo repuesto: ")
                    val nombre: String = readLine().orEmpty()
                    RepuestoDAO.insertarRepuesto(Repuesto(localizacion = localizacion,
                        precio = precio, cantidad = cantidad, nombre = nombre ))

                }
                4 -> {
                    print("Dame el id del repuesto a actualizar: ")
                    val id: Int = isInt()
                    if (RepuestoDAO.comprobarRepuestoPorId(id)){
                        print("localizacion a modificar: ")
                        val localizacion: String = readLine().orEmpty()
                        print("Precio(Double) a modificar: ")
                        val precio: Double = isDouble()
                        print("Cantidad a modificar: ")
                        val cantidad: Int = isInt()
                        print("nombre a modificar: ")
                        val nombre: String = readLine().orEmpty()
                        RepuestoDAO.actualizarRepuesto(Repuesto(id, localizacion = localizacion,
                            precio = precio, cantidad = cantidad ,nombre=nombre))
                    }else{
                        println("Id no existe")
                    }



                }
                5 -> {
                    print("Dame el id del repuesto a eliminar: ")
                    val id: Int = isInt()
                    RepuestoDAO.eliminarRepuesto(id)

                }
                6 -> {
                    itera = false
                }

                else -> {
                    println("Opcion no valida. Por favor, selecciona una opcion del 1 al 5.")
                }
            }

        } catch (e: InputMismatchException) {
            println("Error: Debes introducir un numero valido.")
        } catch (e: Exception) {
            println("Error: ${e.message}")
        }
    } while (itera)

}
fun isInt():Int{
    while (true){
        val entrada=readln().toIntOrNull()
        if (entrada==null){
            println("Dame un número valido")
        }else{
            return entrada
        }
    }
}
fun isDouble(): Double{
    while (true){
        val entrada=readln().toDoubleOrNull()
        if (entrada==null){
            println("Dame un número valido(Double)")
        }else{
            return entrada
        }
    }
}
fun isString(): String{
    while (true){
        val entrada=readln()
        if (entrada.isEmpty()){
            println("Dame un string valido")
        }else{
            return entrada
        }
    }
}
