/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import mvc.bean.Categoria;
import mvc.bean.Produto;
//import mvc.conversor.CategoriaProperty;
import mvc.dao.CategoriaDao;
import mvc.dao.ProdutoDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Deliane
 */
@Controller
public class ProdutoController {
    
    private final ProdutoDao proDao;
    private final CategoriaDao catDao;
    
    @Autowired
    private CategoriaDao categoriaDao;
    
//    @Autowired        
//    private Categoria categoria; ;
//    @InitBinder
//    protected void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) throws Exception {
//        binder.registerCustomEditor(Categoria.class, new CategoriaProperty(categoriaDao));
//    }
    
    @Autowired
    public ProdutoController(ProdutoDao proDao,CategoriaDao catDao){
        this.proDao = proDao;
        this.catDao = catDao;
    }
    
    
    
    @RequestMapping("/produto")
    public String form(Model model){
        model.addAttribute("categorias", catDao.listarCategorias());
        return "produto/produtoForm";
    }
    
    @RequestMapping(value="/adicionaProduto", method = RequestMethod.POST)
    public String adiciona(@Valid Produto produto,BindingResult result, HttpServletRequest request, @RequestParam(value = "image", required = false) MultipartFile image){
        if (result.hasFieldErrors("produto")) {
            return "produto/erro";
        }
        String idCategoria = request.getParameter("categoria");
        proDao.adicionaProduto(produto, idCategoria);
        return "produto/produtoAdicionado";
    }
    
    @RequestMapping("/listaProduto")
    public String lista(Model model){          
        model.addAttribute("produtos", proDao.listarProdutos());
        return "produto/produtoList";
    }
    
    @RequestMapping("/excluiProduto")
    public String remove(Long id){        
        proDao.excluiProduto(id);
        return "redirect:/listaProduto";
    }   
    
    @RequestMapping("/exibeProduto")
    public String exibe(Long id, Model model){
        model.addAttribute("produto", proDao.buscarProdutoPorId(id));
        return "produto/produtoExibe";
    }
    
    @RequestMapping("/alteraProduto")
    public String altera(@Valid Produto produto, BindingResult result){
       
        if (result.hasErrors()) {
            return "produto/produtoExibe";
        }
         //System.out.println("cheguei mapeamento altera cate"); 
        proDao.editaProduto(produto);
        return "redirect:/listaProduto";
    }    
    
}
