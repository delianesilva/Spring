/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import mvc.bean.Cliente;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Deliane
 */
@Repository
public class ClienteDao {
  
    private final Connection connection;
    
    @Autowired
    public ClienteDao(DataSource dataSource){
        try {
            this.connection = dataSource.getConnection();
        } catch (Exception ex) {
            throw new RuntimeException(ex);
        }
    }
    
    public boolean adicionaCliente(Cliente cliente){
        String sql = "insert into cliente"
                   + "(cli_nome, cli_email, cli_login, cli_senha) \n" +
                     "values(?,?,?,?);";
        
        try (PreparedStatement stmt = connection.prepareStatement(sql)){
            //System.out.println("dao cliente"+cliente.getNome());
            stmt.setString(1, cliente.getNome());
            stmt.setString(2, cliente.getEmail());
            stmt.setString(3, cliente.getLogin());
            stmt.setString(4, cliente.getSenha());
            stmt.execute();
            stmt.close();
            
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        
    return true;    
    } 
    
    public boolean editaCliente(Cliente cliente){
        String sql = "update cliente set "
                   + "cli_nome = ?, cli_email = ?, cli_login = ?, cli_senha = ? " +
                     "where cli_id = ?";
        try(PreparedStatement stmt = connection.prepareStatement(sql)) {
            System.out.println(cliente.getId());
            stmt.setString(1, cliente.getNome());
            stmt.setString(2, cliente.getEmail());
            stmt.setString(3, cliente.getLogin());
            stmt.setString(4, cliente.getSenha());
            stmt.setLong(5, cliente.getId());
            stmt.execute();
            stmt.close();
            
        } catch (Exception e) {
            throw  new RuntimeException(e);
        }
    return true;
    }
    
    public Cliente buscarClientePorId(Long id){
        String sql = "select * from cliente where cli_id = ?";
    
        try (PreparedStatement stmt = connection.prepareStatement(sql)){
         
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();
            Cliente cli = new Cliente();
            
            if (rs.next()) {
                cli.setId(rs.getLong("cli_id"));
                cli.setNome(rs.getString("cli_nome"));
                cli.setEmail(rs.getString("cli_email"));
                cli.setLogin(rs.getString("cli_login"));
                cli.setSenha(rs.getString("cli_senha"));                
            }
        return cli;   
        
        } catch (Exception e) {
            throw new RuntimeException(e);
        }        
    }
    
    public List<Cliente> listarCliente(){
        List<Cliente> listaClientes = new ArrayList<>();
        String sql = "select * from cliente order by cli_nome";
        
        try(PreparedStatement stmt = connection.prepareStatement(sql)) {
        ResultSet rs = stmt.executeQuery();
        
            while (rs.next()) {
                Cliente cliente = new Cliente();
                cliente.setId(rs.getLong("cli_id"));
                cliente.setNome(rs.getString("cli_nome"));
                cliente.setEmail(rs.getString("cli_email"));
                cliente.setLogin(rs.getString("cli_login"));
                cliente.setSenha(rs.getString("cli_senha"));
                
                listaClientes.add(cliente);
            }
        rs.close();
        stmt.close();
            
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        
        return listaClientes;
    }    

}
