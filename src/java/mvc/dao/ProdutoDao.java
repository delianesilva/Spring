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
import mvc.bean.Produto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Deliane
 */
@Repository
public class ProdutoDao {
    
    private final Connection connection;
    
    @Autowired
    public ProdutoDao(DataSource dataSource){
        try {
            this.connection = dataSource.getConnection();
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
    }
    
    public boolean adicionaProduto(Produto produto, String idCategoria){
        String sql = "insert into produto(pro_nome, pro_descricao, pro_tipo, pro_imagem, pro_preco, pro_ano, pro_cat_id) \n" +
        "values(?, ?, ?, ?, ?, ?, ?)";
       
        try (PreparedStatement stmt = connection.prepareStatement(sql)){
            
            stmt.setString(1, produto.getNome());
            stmt.setString(2, produto.getDescricao());
            stmt.setInt(3, produto.getTipo());
            stmt.setString(4, produto.getImagem());
            stmt.setDouble(5, produto.getPreco());
            stmt.setInt(6, produto.getAno());
            
            stmt.setString(7, idCategoria);//checar
            stmt.execute();
            stmt.close();
            
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    return true;
    }
    
        public List<Produto> listarProdutos(){
        List<Produto> listaProdutos = new ArrayList<>();
        String sql = "select * from produto order by pro_nome";
        
        try(PreparedStatement stmt = connection.prepareStatement(sql)) {
        ResultSet rs = stmt.executeQuery();
        
            while (rs.next()) {
                Produto produto = new Produto();
                produto.setId(rs.getLong("pro_id"));
                produto.setNome(rs.getString("pro_nome"));
                
                listaProdutos.add(produto);
            }
        rs.close();
        stmt.close();
            
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        
        return listaProdutos;
    }    
        
    public Produto buscarProdutoPorId(Long id){
    
        String sql = "select * from produto where pro_id = ?";
        
        try(PreparedStatement stmt = connection.prepareStatement(sql)) {
            
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();
            Produto pro = new Produto();
            
            if (rs.next()) {
                pro.setId(rs.getLong("pro_id"));
                pro.setNome(rs.getString("pro_nome"));  
                pro.setDescricao(rs.getString("pro_descricao"));
                
                pro.setTipo(rs.getInt("pro_tipo"));
                //pro.setImagem(rs.getString("pro_imagem"));
                pro.setPreco(rs.getDouble("pro_preco"));
                pro.setAno(rs.getInt("pro_ano"));             
            }
            System.out.println(pro.getDescricao()+"descricao");
        return pro;
            
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    } 
    
        public boolean editaProduto(Produto produto){
        String sql = "update produto set pro_nome = ?, pro_descricao = ?, pro_tipo = ?, "
                     + "pro_imagem = ?, pro_preco = ?, pro_ano = ? where pro_id = ?";
        
        try (PreparedStatement stmt = connection.prepareStatement(sql)){
            stmt.setString(1, produto.getNome());
            stmt.setString(2, produto.getDescricao());
            stmt.setInt(3, produto.getTipo());
            stmt.setString(4, produto.getImagem());
            stmt.setDouble(5, produto.getPreco());
            stmt.setInt(6, produto.getAno());
            stmt.setLong(7, produto.getId());
            stmt.execute();
            stmt.close();
            
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
         return true;
    }
    
    
    public boolean excluiProduto(Long id){
        String sql = "delete from produto where pro_id = ?";
        
        try(PreparedStatement stmt = connection.prepareStatement(sql)) {
            //System.out.println("cheguei aqui dao"+ id);
            stmt.setLong(1,id);
            stmt.execute();
            stmt.close();
            
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return true;
    } 
}
