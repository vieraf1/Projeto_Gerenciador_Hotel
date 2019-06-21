package gerenciadorhotel.control;

import gerenciadorhotel.bean.TipoPagamento;
import gerenciadorhotel.dao.TipoPagamentoDao;
import java.sql.SQLException;
import java.util.List;

public class TipoPagamentoControl {
    
    TipoPagamentoDao tipoPagamentoDao;
    
    public TipoPagamento inserirTipoPagamento(TipoPagamento tip) throws SQLException, ClassNotFoundException {
       tipoPagamentoDao = new TipoPagamentoDao();
       return tipoPagamentoDao.inserir(tip);
    }

    public TipoPagamento alterarTipoPagamento(TipoPagamento tip) throws SQLException, ClassNotFoundException {
       tipoPagamentoDao = new TipoPagamentoDao();
       return tipoPagamentoDao.alterar(tip);
    }

    public TipoPagamento excluirTipoPagamento(TipoPagamento tip) throws SQLException, ClassNotFoundException {
       tipoPagamentoDao = new TipoPagamentoDao();
       return tipoPagamentoDao.excluir(tip);
    }

    public TipoPagamento buscarTipoPagamento(TipoPagamento tip) throws SQLException, ClassNotFoundException {
       tipoPagamentoDao = new TipoPagamentoDao();
       return tipoPagamentoDao.buscar(tip);
    }

    public List<TipoPagamento> ListaTipoPagamento(TipoPagamento tip) throws SQLException, ClassNotFoundException {
       tipoPagamentoDao = new TipoPagamentoDao();
       return tipoPagamentoDao.listar(tip);
    }
    
}
