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
import mvc.bean.Mensagem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Maria
 */
@Repository
public class MensagemDao {
    private final Connection connection;
    
    @Autowired
    public MensagemDao(DataSource dataSource){
        try {
            this.connection=dataSource.getConnection();
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }        
    }
    
    public boolean adicionaMensagem(Mensagem mensagem){
        String sql="insert into mensagem(men_nome, men_telefone, men_email,men_assunto, men_mensagem) "
                + "values(?,?,?,?,?)";
        try (PreparedStatement stmt = connection.prepareStatement(sql)){
//            System.out.println(mensagem.getNome());
            stmt.setString(1, mensagem.getNome());
            stmt.setString(2, mensagem.getTelefone());
            stmt.setString(3, mensagem.getEmail());
            stmt.setInt(4, mensagem.getAssunto());
            stmt.setString(5, mensagem.getMensagem());
            
            stmt.execute();
        } catch (SQLException ex) {
            throw new RuntimeException(ex);            
        }
        return true;
    }
    
    public List<Mensagem> listaMensagens(){
        String sql = "select * from mensagem";
        List<Mensagem> listaMensagens = new ArrayList<>();
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();            
            while(rs.next()){
                Mensagem mensagem = new Mensagem();
                mensagem.setId(rs.getLong("men_id"));
                mensagem.setNome(rs.getString("men_nome"));
                mensagem.setTelefone(rs.getString("men_telefone"));
                mensagem.setEmail(rs.getString("men_email"));
                mensagem.setAssunto(rs.getInt("men_assunto"));
                mensagem.setMensagem(rs.getString("men_mensagem"));
                listaMensagens.add(mensagem);
            }
            
        } catch (Exception e) {
            throw new RuntimeException();
        }
        return listaMensagens;
    }
}
