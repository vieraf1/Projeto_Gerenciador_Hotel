package gerenciadorhotel.dao;

import gerenciadorhotel.bean.Hospede;
import gerenciadorhotel.util.ConexaoDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class HospedeDao {
    
    private final Connection c;

    public HospedeDao() throws SQLException, ClassNotFoundException {
        this.c = new ConexaoDB().getConnection();
    }
    
    public Hospede buscar(Hospede hos) throws SQLException {
        String sql = "select * from HOSPEDE "
                +    "WHERE ID_HOSPEDE = ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1, hos.getIdHospede());
        // executa
        ResultSet rs = stmt.executeQuery();
        Hospede retorno = null;
        while (rs.next()) {
            // criando o objeto Funcionario
            retorno = new Hospede(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getInt(3),
                    rs.getString(4),
                    rs.getString(5),
                    rs.getString(6)
            );
        }
        stmt.close();
        return retorno;
    }

    public Hospede alterar(Hospede hos) throws SQLException {
        String sql = "UPDATE HOSPEDE "
                + "SET "
                + "NOME_HOSPEDE = ?,"
                + "IDADE_HOSPEDE = ?,"
                + "RG_HOSPEDE = ?,"
                + "CPF_HOSPEDE = ?,"
                + "TELEFONE_HOSPEDE = ? "
                + "WHERE ID_HOSPEDE = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1, hos.getNomeHospede());
        stmt.setInt(2, hos.getIdadeHospede());
        stmt.setString(3, hos.getRgHospede());
        stmt.setString(4, hos.getCpfHospede());
        stmt.setString(5, hos.getTelefoneHospede());
        stmt.setInt(6, hos.getIdHospede());

        // executa
        stmt.execute();
        stmt.close();
        return hos;
    }
    
    public Hospede excluir(Hospede hos) throws SQLException{
        String sql = "delete from HOSPEDE "
                +    "WHERE ID_HOSPEDE = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,hos.getIdHospede());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return hos;
    }
    
    public List<Hospede> listar(Hospede hosEnt) throws SQLException{
         // usus: array armazena a lista de registros

        List<Hospede> hoss = new ArrayList<>();
        
        String sql = "select * from HOSPEDE "
                +    "where NOME_HOSPEDE like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + hosEnt.getNomeHospede() + "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Usuario
            Hospede hos = new Hospede(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getInt(3),
                    rs.getString(4),
                    rs.getString(5),
                    rs.getString(6)
            );
            // adiciona o usu à lista de usus
            hoss.add(hos);
        }
        
        rs.close();
        stmt.close();
        return hoss;
        
    }
   
    public Hospede inserir(Hospede hos) throws SQLException{
        String sql = "insert into HOSPEDE" 
                + " (NOME_HOSPEDE, IDADE_HOSPEDE, RG_HOSPEDE, CPF_HOSPEDE, TELEFONE_HOSPEDE)"
                + " values (?,?,?,?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);

        // seta os valores
        stmt.setString(1, hos.getNomeHospede());
        stmt.setInt(2, hos.getIdadeHospede());
        stmt.setString(3, hos.getRgHospede());
        stmt.setString(4, hos.getCpfHospede());
        stmt.setString(5, hos.getTelefoneHospede());

        // executa
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            int id = rs.getInt(1);
            hos.setIdHospede(id);
        }
        stmt.close();
        return hos;
    }
}
