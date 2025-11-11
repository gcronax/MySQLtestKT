fun valorRepuestoID(id: Int){
    getConnection()?.use { conn ->
        val sql = "SELECT valorRepuestoID(?)"
        conn.prepareStatement(sql).use { stmt ->
            stmt.setInt(1, id)
            stmt.executeQuery().use { rs ->
                if (rs.next()) {
                    val resultado = rs.getInt(1)
                    println("El valor es: $resultado")
                }
            }
        }
    }
}

fun valorRuedaID(id: Int){
    getConnection()?.use { conn ->
        val sql = "SELECT valorRuedaID(?)"
        conn.prepareStatement(sql).use { stmt ->
            stmt.setInt(1, id)
            stmt.executeQuery().use { rs ->
                if (rs.next()) {
                    val resultado = rs.getInt(1)
                    println("El valor es: $resultado")
                }
            }
        }
    }
}

fun valorTablaRepuestos(){
    getConnection()?.use { conn ->
        val sql = "SELECT valorTablaRepuestos()"
        conn.prepareStatement(sql).use { stmt ->
//            stmt.setInt(1, id)
            stmt.executeQuery().use { rs ->
                if (rs.next()) {
                    val resultado = rs.getInt(1)
                    println("El valor es: $resultado")
                }
            }
        }
    }
}

fun valorTablaRuedas(){
    getConnection()?.use { conn ->
        val sql = "SELECT valorTablaRuedas()"
        conn.prepareStatement(sql).use { stmt ->
//            stmt.setInt(1, id)
            stmt.executeQuery().use { rs ->
                if (rs.next()) {
                    val resultado = rs.getInt(1)
                    println("El valor es: $resultado")
                }
            }
        }
    }
}


fun suministrar_mas_ruedas(ruedas:Int){
    getConnection()?.use { conn ->
        val sql = "{CALL suministrar_mas_ruedas(?)}"
        conn.prepareCall(sql).use { call ->
            call.setInt(1, ruedas)

            call.executeQuery().use {}
        }
    }
}

fun listar_coches_de_mayor_potencia(potencia: Int){
    getConnection()?.use { conn ->
        val sqlProcedimiento = "{CALL listar_coches_de_mayor_potencia(?)}"
        conn.prepareCall(sqlProcedimiento).use { call ->
            call.setInt(1, potencia)
            call.executeQuery().use { rs ->
                println("\n Coches con mayor potencia que: $potencia")
                while (rs.next()) {
                    val id_coche = rs.getInt("id_coche")
                    val modelo = rs.getString("modelo")
                    val marca = rs.getString("marca")
                    val consumo  = rs.getDouble("consumo")
                    val hp = rs.getInt("hp")
                    println(" - id -> [${id_coche}] modelo:${modelo}, marca:${marca}, consuo:${consumo}, potencia:${hp} ")
                }
            }
        }
    }
}