/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mvc.controller;

import javax.validation.Valid;
import mvc.bean.Mensagem;
import mvc.dao.MensagemDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Maria
 */
@Controller
public class MensagemController {

    private final MensagemDao dao;
    
    @Autowired
    public MensagemController(MensagemDao dao){
        this.dao = dao;
    }
    
    @RequestMapping("/mensagem")
    public String form(){        
        return "mensagem/mensagemForm";
        
    } 
    
    @RequestMapping("/adicionaMensagem")
    public String adiciona(@Valid Mensagem mensagem,BindingResult result){ 
        
        if(result.hasFieldErrors("nome")) {
            return "mensagem/erro";
        }
        
        dao.adicionaMensagem(mensagem);
        return "mensagem/mensagemAdicionada";
    }     
     @RequestMapping("/listaMensagens")
    public String lista(Model model){ 
        model.addAttribute("mensagens",dao.listaMensagens());
        return "mensagem/mensagemList";
        
    } 
}
