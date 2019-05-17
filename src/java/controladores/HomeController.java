package controladores;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modeloDatos.ModeloHome;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

@Controller
public class HomeController extends MultiActionController {

    @RequestMapping("/homeController/cargar.htm")
    public ModelAndView cargar(HttpServletRequest request, HttpServletResponse response) throws Exception, ServletException {
        ModelAndView mv = new ModelAndView("home");
        
        ModeloHome modelo = new ModeloHome(request.getServletContext());

        mv.addObject("listaOfertas", modelo.getOfertas());   

        return mv;
    }

    @RequestMapping("/homeController/modales.htm")
    public ModelAndView modales(HttpServletRequest request, HttpServletResponse response) throws Exception, ServletException {
        ModelAndView mv = new ModelAndView("home");

        ModeloHome modelo = new ModeloHome(request.getServletContext());
        
        mv.addObject("listaModales", modelo.getModales());   
        
        return mv;
    }

}
