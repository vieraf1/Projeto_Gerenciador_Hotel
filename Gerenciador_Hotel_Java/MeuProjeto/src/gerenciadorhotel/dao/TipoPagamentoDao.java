
package gerenciadorhotel.dao;

import gerenciadorhotel.bean.TipoPagamento;
import gerenciadorhotel.util.ConexaoDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class TipoPagamentoDao {
    
    private final Connection c;
    
    public TipoPagamentoDao() throws SQLException, ClassNotFoundException {
        this.c = new ConexaoDB().getConnection();
    }
    
    public TipoPagamento buscar(TipoPagamento tip) throws SQLException {
        String sql = "select * from TIPO_PAGAMENTO "
                   + "WHERE ID_TIPO_PAGAMENTO = ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1, tip.getIdTipoPagamento());
        // executa
        ResultSet rs = stmt.executeQuery();
        TipoPagamento retorno = null;
        while (rs.next()) {
            // criando o objeto Funcionario
            retorno = new TipoPagamento(
                    rs.getInt(1),
                    rs.getString(2)
            );
        }
        stmt.close();
        return retorno;
    }
    
    public TipoPagamento alterar(TipoPagamento tip) throws SQLException {
        String sql = "UPDATE TIPO_PAGAMENTO "
                + "SET "
                + "DESCRICAO_TIPO_PAGAMENTO = ? "
                + "WHERE ID_TIPO_PAGAMENTO = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1, tip.getDescricaoTipoPagamento());
        stmt.setInt(2, tip.getIdTipoPagamento());

        // executa
        stmt.execute();
        stmt.close();
        return tip;
    }
    
    public TipoPagamento excluir(TipoPagamento tip) throws SQLException{
        String sql = "delete from TIPO_PAGAMENTO "
                +    "WHERE ID_TIPO_PAGAMENTO = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,tip.getIdTipoPagamento());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return tip;
    }
    
    public List<TipoPagamento> listar(TipoPagamento tipEnt) throws SQLException{
         // usus: array armazena a lista de registros

        List<TipoPagamento> tips = new ArrayList<>();
        
        String sql = "select * from TIPO_PAGAMENTO "
                +    "where DESCRICAO_TIPO_PAGAMENTO like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + tipEnt.getDescricaoTipoPagamento() + "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            TipoPagamento tip = new TipoPagamento(
                    rs.getInt(1),
                    rs.getString(2)
            );
            tips.add(tip);
        }
        
        rs.close();
        stmt.close();
        return tips;
    }
   
    public TipoPagamento inserir(TipoPagamento tip) throws SQLException{
        String sql = "insert into TIPO_PAGAMENTO" 
                + " (DESCRICAO_TIPO_PAGAMENTO)"
                + " values (?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);

        // seta os valores
        stmt.setString(1, tip.getDescricaoTipoPagamento());

        // executa
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            int id = rs.getInt(1);
            tip.setIdTipoPagamento(id);
        }
        stmt.close();
        return tip;
    }
    
}
