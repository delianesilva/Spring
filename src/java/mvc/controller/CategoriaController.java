/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mvc.controller;

import javax.validation.Valid;
import mvc.bean.Categoria;
import mvc.dao.CategoriaDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Deliane
 */
@Controller
public class CategoriaController {
    
    private final CategoriaDao dao;
    
    @Autowired
    public CategoriaController(CategoriaDao dao){
        this.dao = dao;
    }
    
    @RequestMapping("/categoria")
    public String form(){
        return "categoria/categoriaForm";
    }
    
    @RequestMapping("/adicionaCategoria")
    public String adiciona(@Valid Categoria categoria, BindingResult result){
        //System.out.println("cheguei aqui");
        
        if(result.hasFieldErrors("nome")) {
            return "categoria/erro";
        }
        
        dao.adicionaCategoria(categoria);
        return "categoria/categoriaAdicionada";
    }
    
    @RequestMapping("/listaCategoria")
    public String lista(Model model){          
        model.addAttribute("categorias", dao.listarCategorias());
        return "categoria/categoriaList";
    }
    
//    @RequestMapping("/lista")
//    public void lista(Model model){          
//        model.addAttribute("categorias", dao.listarCategorias());
//       
//    }
    
    @RequestMapping("/excluiCategoria")
    public String remove(Long id){        
        dao.excluiCategoria(id);
        return "redirect:/listaCategoria";
    }   
    
    @RequestMapping("/exibeCategoria")
    public String exibe(Long id, Model model){
        model.addAttribute("categoria", dao.buscarCategoriaPorId(id));
        return "categoria/categoriaExibe";
    }
    
    @RequestMapping("/alteraCategoria")
    public String altera(@Valid Categoria categoria, BindingResult result){
       
        if (result.hasErrors()) {
            return "categoria/categoriaExibe";
        }
         //System.out.println("cheguei mapeamento altera cate"); 
        dao.editaCategoria(categoria);
        return "redirect:/listaCategoria";
    }
    
}
