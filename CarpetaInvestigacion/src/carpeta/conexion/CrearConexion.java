/*
 * 	AUTOR: Ing. Flores Garia Diana Laura.
 *  Fecha de Inicio: 10 de Octubre de 2018.
 *  Última modificación: 10/10/2018.
 */

package carpeta.conexion;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class CrearConexion {
	private static final SessionFactory sessionFactory = buildSessionFactory();

	private static SessionFactory buildSessionFactory() {
		try {
			// Crea una sesion basado en hibernate.cfg.xml
			return new Configuration().configure().buildSessionFactory();
		} catch (Throwable ex) {
			System.err.println("Error al crear sessionFactory " + ex);
			throw new ExceptionInInitializerError(ex);
		}
	}

	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public static void closeSessionFactory() {
		sessionFactory.close();
	}
}
