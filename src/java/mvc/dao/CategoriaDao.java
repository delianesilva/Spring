/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import javax.swing.JOptionPane;
import mvc.bean.Categoria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Deliane
 */
@Repository
public class CategoriaDao {

    private final Connection connection;
    
    @Autowired
    public CategoriaDao(DataSource dataSource){
        try {
            this.connection = dataSource.getConnection();
        } catch (Exception ex) {
            throw new RuntimeException(ex);
        }
    }
    
    public boolean adicionaCategoria(Categoria categoria){
        String sql = "insert into categoria(cat_nome) values(?)";
        
        try (PreparedStatement stmt = connection.prepareStatement(sql)){
            System.out.println(categoria.getNome());
            stmt.setString(1, categoria.getNome());
            stmt.execute();
            stmt.close();
            
            
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        
        return true;
    }
    
    
    public boolean editaCategoria(Categoria categoria){
        String sql = "update categoria " +
                     "set cat_nome = ? " +
                     "where cat_id = ?";
        
        try (PreparedStatement stmt = connection.prepareStatement(sql)){
            stmt.setString(1, categoria.getNome());
            stmt.setLong(2, categoria.getId());
            stmt.execute();
            stmt.close();
            
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
         return true;
    }
    
    
    public boolean excluiCategoria(Long id){
        String sql = "delete from categoria where cat_id = ?";
        
        try(PreparedStatement stmt = connection.prepareStatement(sql)) {
            //System.out.println("cheguei aqui dao"+ id);
            stmt.setLong(1,id);
            stmt.execute();
            stmt.close();
            
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return true;
    }    
    
    public List<Categoria> listarCategorias(){
        List<Categoria> listaCategorias = new ArrayList<>();
        String sql = "select * from categoria order by cat_nome";
        
        try(PreparedStatement stmt = connection.prepareStatement(sql)) {
        ResultSet rs = stmt.executeQuery();
        
            while (rs.next()) {
                Categoria categoria = new Categoria();
                categoria.setId(rs.getLong("cat_id"));
                categoria.setNome(rs.getString("cat_nome"));
                
                listaCategorias.add(categoria);
            }
        rs.close();
        stmt.close();
            
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        
        return listaCategorias;
    }    
        
    public Categoria buscarCategoriaPorId(Long id){
    
        String sql = "select * from categoria where cat_id = ?";
        
        try(PreparedStatement stmt = connection.prepareStatement(sql)) {
            
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();
            Categoria cat = new Categoria();
            
            if (rs.next()) {
                cat.setId(rs.getLong("cat_id"));
                cat.setNome(rs.getString("cat_nome"));               
            }
        return cat;
            
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    
}
    
