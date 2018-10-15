/*
 * 	AUTOR: Ing. Flores Garia Diana Laura.
 *  Fecha de Inicio: 10 de Octubre de 2018.
 *  Última modificación: 15/10/2018.
 */

package carpeta.operaciones;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class LogueoCarpeta {
	String driver;
	String url;
	String usr;
	String pass;

	public LogueoCarpeta() {
		driver = "com.mysql.jdbc.Driver";
		url = "jdbc:mysql://127.0.0.1:3306/bd_carpeta";
		usr = "root";
		pass = "";
	}

	// Funcion para loguear
	public int loguear(String user, String password) {
		Connection conn;
		PreparedStatement ps;
		ResultSet rs;

		int nivel = 0; // usuario que se este logueando
		String sql = "SELECT nivel FROM login WHERE usuario='" + user + "' AND contra='" + password + "'";
		try {
			Class.forName(this.driver); // Se levanta el driver
			conn = DriverManager.getConnection( // Se establece la conexion
					this.url, // Parametros de metodo de conexion
					this.usr, this.pass);
			ps = conn.prepareStatement(sql); // Prepara la sentencia
			rs = ps.executeQuery(); // Ejecuta la query y se tiene resultado de 'sql'
			while (rs.next()) {
				nivel = rs.getInt(1);
			}
			conn.close();
		} catch (ClassNotFoundException | SQLException e) {

		}
		return nivel;
	}
}
