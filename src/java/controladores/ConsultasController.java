package controladores;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

public class ConsultasController extends MultiActionController {

    public ModelAndView cargar(HttpServletRequest request, HttpServletResponse response) throws Exception, ServletException {
        ModelAndView mv = new ModelAndView("consultas");

        return mv;
    }

    public ModelAndView modales(HttpServletRequest request, HttpServletResponse response) throws Exception, ServletException {
        ModelAndView mv = new ModelAndView("consultas");

        
        
        return mv;
    }

}
