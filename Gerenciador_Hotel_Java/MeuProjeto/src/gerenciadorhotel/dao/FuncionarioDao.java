package gerenciadorhotel.dao;

import gerenciadorhotel.bean.Funcionario;
import gerenciadorhotel.util.ConexaoDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class FuncionarioDao {

    private final Connection c;

    public FuncionarioDao() throws SQLException, ClassNotFoundException {
        this.c = new ConexaoDB().getConnection();
    }

    public Funcionario buscar(Funcionario func) throws SQLException {
        String sql = "select * from FUNCIONARIO "
                +    "WHERE ID_FUNCIONARIO = ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1, func.getIdFuncionario());
        // executa
        ResultSet rs = stmt.executeQuery();
        Funcionario retorno = null;
        while (rs.next()) {
            // criando o objeto Funcionario
            retorno = new Funcionario(
                    rs.getInt(1),
                    rs.getInt(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getString(5),
                    rs.getInt(6),
                    rs.getString(7),
                    rs.getString(8),
                    rs.getString(9),
                    rs.getString(10)
            );
        }
        stmt.close();
        return retorno;
    }

    public Funcionario alterar(Funcionario func) throws SQLException {
        String sql = "UPDATE FUNCIONARIO "
                + "SET "
                + "ID_HOTEL = ?,"
                + "LOGIN = ?,"
                + "SENHA = ?,"
                + "NOME_FUNCIONARIO = ?,"
                + "IDADE_FUNCIONARIO = ?,"
                + "RG_FUNCIONARIO = ?,"
                + "CPF_FUNCIONARIO = ?,"
                + "CTPS_FUNCIONARIO = ?,"
                + "TELEFONE_FUNCIONARIO = ? "
                + "WHERE ID_FUNCIONARIO = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1, func.getIdHotel());
        stmt.setString(2, func.getLogin());
        stmt.setString(3, func.getSenha());
        stmt.setString(4, func.getNomeFuncionario());
        stmt.setInt(5, func.getIdadeFuncionario());
        stmt.setString(6, func.getRgFuncionario());
        stmt.setString(7, func.getCpfFuncionario());
        stmt.setString(8, func.getCtpsFuncionario());
        stmt.setString(9, func.getTelefoneFuncionario());
        stmt.setInt(10, func.getIdFuncionario());

        // executa
        stmt.execute();
        stmt.close();
        return func;
    }
    
    public Funcionario excluir(Funcionario func) throws SQLException{
        String sql = "delete from FUNCIONARIO "
                +    "WHERE ID_FUNCIONARIO = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,func.getIdFuncionario());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return func;
    }
    
    public Funcionario validarLogin(Funcionario func) throws SQLException{
        // cria o select para ser executado no banco de dados 
        String sql = "select * from FUNCIONARIO "
                +    "WHERE LOGIN = ? AND SENHA = ? ";
        // prepared statement para seleção
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,func.getLogin());
        stmt.setString(2,func.getSenha());
        // executa
        ResultSet rs = stmt.executeQuery();
        // percorrendo o rs
        Funcionario retorno = null;
        while (rs.next()) {      
            // criando o objeto Funcionario
            retorno = new Funcionario(
                    rs.getInt(1),
                    rs.getInt(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getString(5),
                    rs.getInt(6),
                    rs.getString(7),
                    rs.getString(8),
                    rs.getString(9),
                    rs.getString(10)
            );
        }
        stmt.close();
        return retorno;
    }
    
    public List<Funcionario> listar(Funcionario funcEnt) throws SQLException{
         // usus: array armazena a lista de registros

        List<Funcionario> funcs = new ArrayList<>();
        
        String sql = "select * from FUNCIONARIO "
                +    "where LOGIN like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + funcEnt.getLogin() + "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Usuario
            Funcionario func = new Funcionario(
                    rs.getInt(1),
                    rs.getInt(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getString(5),
                    rs.getInt(6),
                    rs.getString(7),
                    rs.getString(8),
                    rs.getString(9),
                    rs.getString(10)
            );
            // adiciona o usu à lista de usus
            funcs.add(func);
        }
        
        rs.close();
        stmt.close();
        return funcs;
        
    }
   
    public Funcionario inserir(Funcionario func) throws SQLException{
        String sql = "insert into FUNCIONARIO" 
                + " (ID_HOTEL, LOGIN, SENHA, NOME_FUNCIONARIO, IDADE_FUNCIONARIO, RG_FUNCIONARIO, CPF_FUNCIONARIO, CTPS_FUNCIONARIO, TELEFONE_FUNCIONARIO)"
                + " values (?,?,?,?,?,?,?,?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);

        // seta os valores
        stmt.setInt(1, func.getIdHotel());
        stmt.setString(2, func.getLogin());
        stmt.setString(3, func.getSenha());
        stmt.setString(4, func.getNomeFuncionario());
        stmt.setInt(5, func.getIdadeFuncionario());
        stmt.setString(6, func.getRgFuncionario());
        stmt.setString(7, func.getCpfFuncionario());
        stmt.setString(8, func.getCtpsFuncionario());
        stmt.setString(9, func.getTelefoneFuncionario());

        // executa
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            int id = rs.getInt(1);
            func.setIdFuncionario(id);
        }
        stmt.close();
        return func;
    }

}
