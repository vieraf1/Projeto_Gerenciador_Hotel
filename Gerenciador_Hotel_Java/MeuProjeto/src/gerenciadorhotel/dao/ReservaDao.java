package gerenciadorhotel.dao;

import gerenciadorhotel.bean.Reserva;
import gerenciadorhotel.util.ConexaoDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class ReservaDao {
    
    private final Connection c;

    public ReservaDao() throws SQLException, ClassNotFoundException {
        this.c = new ConexaoDB().getConnection();
    }
    
    public Reserva buscar(Reserva res) throws SQLException {
        String sql = "select * from RESERVA "
                +    "WHERE ID_RESERVA = ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1, res.getIdReserva());
        // executa
        ResultSet rs = stmt.executeQuery();
        Reserva retorno = null;
        while (rs.next()) {
            // criando o objeto Funcionario
            retorno = new Reserva(
                    rs.getInt(1),
                    rs.getInt(2),
                    rs.getInt(3),
                    rs.getInt(4),
                    rs.getInt(5),
                    rs.getInt(6),
                    rs.getDate(7),
                    rs.getDate(8),
                    rs.getFloat(9)
            );
        }
        stmt.close();
        return retorno;
    }

    public Reserva alterar(Reserva res) throws SQLException {
        String sql = "UPDATE RESERVA "
                + "SET "
                + "ID_HOTEL = ?,"
                + "ID_QUARTO = ?,"
                + "ID_HOSPEDE = ?,"
                + "ID_TIPO_PAGAMENTO = ?,"
                + "ID_FUNCIONARIO = ?,"
                + "DATA_INICIO = ?,"
                + "DATA_FIM = ?,"
                + "VALOR_TOTAL = ? "
                + "WHERE ID_RESERVA = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1, res.getIdHotel());
        stmt.setInt(2, res.getIdQuarto());
        stmt.setInt(3, res.getIdHospede());
        stmt.setInt(4, res.getIdTipoPagamento());
        stmt.setInt(5, res.getIdFuncionario());
        stmt.setDate(6, (Date) res.getDataInicio());
        stmt.setDate(7, (Date) res.getDataFim());
        stmt.setFloat(8, res.getValorTotal());
        stmt.setInt(9, res.getIdReserva());

        // executa
        stmt.execute();
        stmt.close();
        return res;
    }
    
    public Reserva excluir(Reserva res) throws SQLException{
        String sql = "delete from RESERVA "
                +    "WHERE ID_RESERVA = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1, res.getIdReserva());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return res;
    }
    
    public List<Reserva> listar(Reserva resEnt) throws SQLException{
         // usus: array armazena a lista de registros

        List<Reserva> ress = new ArrayList<>();
        
        String sql = "select * from RESERVA "
                +    "where VALOR_TOTAL like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + resEnt.getValorTotal() + "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Usuario
            Reserva res = new Reserva(
                    rs.getInt(1),
                    rs.getInt(2),
                    rs.getInt(3),
                    rs.getInt(4),
                    rs.getInt(5),
                    rs.getInt(6),
                    rs.getDate(7),
                    rs.getDate(8),
                    rs.getFloat(9)
            );
            // adiciona o usu à lista de usus
            ress.add(res);
        }
        
        rs.close();
        stmt.close();
        return ress;
        
    }
   
    public Reserva inserir(Reserva res) throws SQLException{
        String sql = "insert into RESERVA" 
                + " (ID_HOTEL, ID_QUARTO, ID_HOSPEDE, ID_TIPO_PAGAMENTO, ID_FUNCIONARIO, DATA_INICIO, DATA_FIM, VALOR_TOTAL)"
                + " values (?,?,?,?,?,?,?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);

        // seta os valores
        stmt.setInt(1, res.getIdHotel());
        stmt.setInt(2, res.getIdQuarto());
        stmt.setInt(3, res.getIdHospede());
        stmt.setInt(4, res.getIdTipoPagamento());
        stmt.setInt(5, res.getIdFuncionario());
        stmt.setDate(6, (Date) res.getDataInicio());
        stmt.setDate(7, (Date) res.getDataFim());
        stmt.setFloat(8, res.getValorTotal());

        // executa
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            int id = rs.getInt(1);
            res.setIdReserva(id);
        }
        stmt.close();
        return res;
    }
}
