/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mvc.controller;

import javax.validation.Valid;
import mvc.bean.Cliente;
import mvc.dao.ClienteDao;
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
public class ClienteController {
    
    private final ClienteDao dao;
    
    @Autowired
    public ClienteController(ClienteDao dao){
        this.dao = dao;
    } 
    
    @RequestMapping("/cliente")
    public String form(){
        return "cliente/clienteForm";
    }
    
    @RequestMapping("/adicionaCliente")
    public String adiciona(@Valid Cliente cliente,BindingResult result){
        System.out.println("cheguei aqui controle cliente");
        if (result.hasFieldErrors("nome")) {
            return "cliente/erro";
        }
        dao.adicionaCliente(cliente);
        return "cliente/clienteAdicionado";
    }
    
    @RequestMapping("/listaCliente")
    public String lista(Model model){          
        model.addAttribute("clientes", dao.listarCliente());
        return "cliente/clienteList";
    }
    
    @RequestMapping("/exibeCliente")
    public String exibe(Long id, Model model){
        model.addAttribute("cliente", dao.buscarClientePorId(id));
        return "cliente/clienteExibe";
    }
    
    @RequestMapping("/alteraCliente")
    public String altera(@Valid Cliente cliente, BindingResult result){
       
        if (result.hasErrors()) {
            return "cliente/clienteExibe";
        }
         System.out.println("cheguei mapeamento altera cli"); 
        dao.editaCliente(cliente);
        return "redirect:/listaCliente";
    }
    
}
