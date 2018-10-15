/*
 * 	AUTOR: Ing. Flores Garia Diana Laura.
 *  Fecha de Inicio: 10 de Octubre de 2018.
 *  Última modificación: 13/10/2018.
 */

package carpeta.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ControladorRegistrar {

	@RequestMapping("opcion_main")
	public ModelAndView clickbotonLoguin() {
		return new ModelAndView("/opcion_main_vista");
	}

	@RequestMapping("opcion_user")
	public ModelAndView clickbotonLoguin2() {
		return new ModelAndView("/opcion_user_vista");
	}

	@RequestMapping("login")
	public ModelAndView log() {
		return new ModelAndView("/login_vista");
	}
}
