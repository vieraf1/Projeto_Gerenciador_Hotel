package gerenciadorhotel.control;

import gerenciadorhotel.bean.Funcionario;
import gerenciadorhotel.bean.Hotel;
import gerenciadorhotel.dao.FuncionarioDao;
import java.sql.SQLException;
import java.util.List;

public class FuncionarioControl {
    
    FuncionarioDao funcionarioDao;
    HotelControl hotCont = new HotelControl();
    
    public Funcionario validarLogin(Funcionario func) throws SQLException, ClassNotFoundException {
       funcionarioDao = new FuncionarioDao();
       return funcionarioDao.validarLogin(func);
    }
    
    public Funcionario inserirFuncionario(Funcionario func) throws SQLException, ClassNotFoundException {
       funcionarioDao = new FuncionarioDao();
       return funcionarioDao.inserir(func);
    }

    public Funcionario alterarFuncionario(Funcionario func) throws SQLException, ClassNotFoundException {
       funcionarioDao = new FuncionarioDao();
       return funcionarioDao.alterar(func);
    }

    public Funcionario excluirFuncionario(Funcionario func) throws SQLException, ClassNotFoundException {
       funcionarioDao = new FuncionarioDao();
       return funcionarioDao.excluir(func);

    }

    public Funcionario buscarFuncionario(Funcionario func) throws SQLException, ClassNotFoundException {
       funcionarioDao = new FuncionarioDao();
       func = funcionarioDao.buscar(func);
       
       Hotel hot = new Hotel(func.getIdHotel(),"","","","");
       hot = hotCont.buscarHotel(hot);        
       func.setHotel(hot);
        
       return func;
    }

    public List<Funcionario> ListaFuncionario(Funcionario func) throws SQLException, ClassNotFoundException {
       funcionarioDao = new FuncionarioDao();
       List<Funcionario> fucs = funcionarioDao.listar(func);

        for (Funcionario listaFuncionario : fucs) {
              Hotel hot = new Hotel(listaFuncionario.getIdHotel(),"","","","");
              listaFuncionario.setHotel(hotCont.buscarHotel(hot));
        }

        return fucs;
    }
    
}
