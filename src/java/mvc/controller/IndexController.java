/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.ModelAndView;



/**
 *
 * @author Maria
 */
@Controller
public class IndexController {
    @RequestMapping("/")
    public String index(){
        return "index";
    }
    @RequestMapping("/welcome")
    public ModelAndView welcome(){
        String viewName = "welcome";
        String var = "message";
        String content = "Ola";
        return new ModelAndView(viewName,var,content);
        
    }  
    
    
    @RequestMapping("/acesso")
    public String acesso(){
        String viewName = "acesso/acesso";
        return viewName;
    }
    
    @RequestMapping("/menu")
    public String menu(){
        String viewName = "menu/menu";
        return viewName;
    }
    
    @RequestMapping("/banner")
    public String banner(){
        String viewName = "pages/banner";
        return viewName;
    }
    
    @RequestMapping("/nov")
    public String novidades(){
        String viewName = "pages/novidades";
        return viewName;
    }
    
    @RequestMapping("/vendidos")
    public String maisvendidos(){
        String viewName = "pages/maisvendidos";
        return viewName;
    }
    
    @RequestMapping("/princ")
    public String principal(){
        String viewName = "pages/principal";
        return viewName;
    }
}
