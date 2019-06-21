package gerenciadorhotel.dao;

import gerenciadorhotel.bean.Hotel;
import gerenciadorhotel.util.ConexaoDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class HotelDao {
    
    private final Connection c;
    
    public HotelDao() throws SQLException, ClassNotFoundException {
        this.c = new ConexaoDB().getConnection();
    }
    
    public Hotel buscar(Hotel hot) throws SQLException {
        String sql = "select * from HOTEL "
                   + "WHERE ID_HOTEL = ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1, hot.getIdHotel());
        // executa
        ResultSet rs = stmt.executeQuery();
        Hotel retorno = null;
        while (rs.next()) {
            // criando o objeto Funcionario
            retorno = new Hotel(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getString(5)
            );
        }
        stmt.close();
        return retorno;
    }
    
    public Hotel alterar(Hotel hot) throws SQLException {
        String sql = "UPDATE HOTEL "
                + "SET "
                + "NOME_HOTEL = ?, "
                + "CNPJ_HOTEL = ?, "
                + "TELEFONE_HOTEL = ?, "
                + "ENDERECO_HOTEL = ? "
                + "WHERE ID_HOTEL = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1, hot.getNomeHotel());
        stmt.setString(2, hot.getCnpjHotel());
        stmt.setString(3, hot.getTelefoneHotel());
        stmt.setString(4, hot.getEnderecoHotel());
        stmt.setInt(5, hot.getIdHotel());

        // executa
        stmt.execute();
        stmt.close();
        return hot;
    }
    
    public Hotel excluir(Hotel hot) throws SQLException{
        String sql = "delete from HOTEL "
                +    "WHERE ID_HOTEL = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,hot.getIdHotel());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return hot;
    }
    
    public List<Hotel> listar(Hotel hotEnt) throws SQLException{
         // usus: array armazena a lista de registros

        List<Hotel> hots = new ArrayList<>();
        
        String sql = "select * from HOTEL "
                +    "where NOME_HOTEL like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + hotEnt.getNomeHotel() + "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            Hotel hot = new Hotel(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getString(5)
            );
            hots.add(hot);
        }
        
        rs.close();
        stmt.close();
        return hots;
    }
   
    public Hotel inserir(Hotel hot) throws SQLException{
        String sql = "insert into HOTEL" 
                + " (NOME_HOTEL, CNPJ_HOTEL, TELEFONE_HOTEL, ENDERECO_HOTEL)"
                + " values (?,?,?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);

        // seta os valores
        stmt.setString(1, hot.getNomeHotel());
        stmt.setString(2, hot.getCnpjHotel());
        stmt.setString(3, hot.getTelefoneHotel());
        stmt.setString(4, hot.getEnderecoHotel());

        // executa
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            int id = rs.getInt(1);
            hot.setIdHotel(id);
        }
        stmt.close();
        return hot;
    }
    
}
