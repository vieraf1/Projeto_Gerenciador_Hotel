package gerenciadorhotel.dao;

import gerenciadorhotel.bean.Quarto;
import gerenciadorhotel.util.ConexaoDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class QuartoDao {
    
    private final Connection c;

    public QuartoDao() throws SQLException, ClassNotFoundException {
        this.c = new ConexaoDB().getConnection();
    }
    
    public Quarto buscar(Quarto qua) throws SQLException {
        String sql = "select * from QUARTO "
                +    "WHERE ID_QUARTO = ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1, qua.getIdQuarto());
        // executa
        ResultSet rs = stmt.executeQuery();
        Quarto retorno = null;
        while (rs.next()) {
            // criando o objeto Funcionario
            retorno = new Quarto(
                    rs.getInt(1),
                    rs.getInt(2),
                    rs.getInt(3),
                    rs.getFloat(4),
                    rs.getInt(5),
                    rs.getString(6)
            );
        }
        stmt.close();
        return retorno;
    }

    public Quarto alterar(Quarto qua) throws SQLException {
        String sql = "UPDATE QUARTO "
                + "SET "
                + "ID_HOTEL = ?,"
                + "NUMERO_QUARTO = ?,"
                + "VALOR_DIARIA = ?,"
                + "STATUS_QUARTO = ?,"
                + "TELEFONE_QUARTO = ? "
                + "WHERE ID_QUARTO = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1, qua.getIdHotel());
        stmt.setInt(2, qua.getNumeroQuarto());
        stmt.setFloat(3, qua.getValorDiaria());
        stmt.setInt(4, qua.getStatusQuarto());
        stmt.setString(5, qua.getTelefoneQuarto());
        stmt.setInt(6, qua.getIdQuarto());

        // executa
        stmt.execute();
        stmt.close();
        return qua;
    }
    
    public Quarto excluir(Quarto qua) throws SQLException{
        String sql = "delete from QUARTO "
                +    "WHERE ID_QUARTO = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,qua.getIdQuarto());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return qua;
    }
    
    public List<Quarto> listar(Quarto quaEnt) throws SQLException{
         // usus: array armazena a lista de registros

        List<Quarto> quats = new ArrayList<>();
        
        String sql = "select * from QUARTO "
                +    "where TELEFONE_QUARTO like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + quaEnt.getTelefoneQuarto() + "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Usuario
            Quarto qua = new Quarto(
                    rs.getInt(1),
                    rs.getInt(2),
                    rs.getInt(3),
                    rs.getFloat(4),
                    rs.getInt(5),
                    rs.getString(6)
            );
            // adiciona o usu à lista de usus
            quats.add(qua);
        }
        
        rs.close();
        stmt.close();
        return quats;
        
    }
   
    public Quarto inserir(Quarto qua) throws SQLException{
        String sql = "insert into QUARTO" 
                + " (ID_HOTEL, NUMERO_QUARTO, VALOR_DIARIA, STATUS_QUARTO, TELEFONE_QUARTO)"
                + " values (?,?,?,?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);

        // seta os valores
        stmt.setInt(1, qua.getIdHotel());
        stmt.setInt(2, qua.getNumeroQuarto());
        stmt.setFloat(3, qua.getValorDiaria());
        stmt.setInt(4, qua.getStatusQuarto());
        stmt.setString(5, qua.getTelefoneQuarto());

        // executa
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            int id = rs.getInt(1);
            qua.setIdQuarto(id);
        }
        stmt.close();
        return qua;
    }
}
