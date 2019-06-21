package gerenciadorhotel.control;

import gerenciadorhotel.bean.Hospede;
import gerenciadorhotel.dao.HospedeDao;
import java.sql.SQLException;
import java.util.List;

public class HospedeControl {
    
    HospedeDao hospedeDao;
    
    public Hospede inserirHospede(Hospede hos) throws SQLException, ClassNotFoundException {
       hospedeDao = new HospedeDao();
       return hospedeDao.inserir(hos);
    }

    public Hospede alterarHospede(Hospede hos) throws SQLException, ClassNotFoundException {
       hospedeDao = new HospedeDao();
       return hospedeDao.alterar(hos);
    }

    public Hospede excluirHospede(Hospede hos) throws SQLException, ClassNotFoundException {
       hospedeDao = new HospedeDao();
       return hospedeDao.excluir(hos);
    }

    public Hospede buscarHospede(Hospede hos) throws SQLException, ClassNotFoundException {
       hospedeDao = new HospedeDao();
       return hospedeDao.buscar(hos);
    }

    public List<Hospede> ListaHospede(Hospede hos) throws SQLException, ClassNotFoundException {
       hospedeDao = new HospedeDao();
       return hospedeDao.listar(hos);
    }
    
}