package gerenciadorhotel.control;

import gerenciadorhotel.bean.Reserva;
import gerenciadorhotel.bean.Funcionario;
import gerenciadorhotel.bean.TipoPagamento;
import gerenciadorhotel.bean.Hospede;
import gerenciadorhotel.bean.Quarto;
import gerenciadorhotel.bean.Hotel;
import gerenciadorhotel.dao.ReservaDao;
import java.sql.SQLException;
import java.util.List;

public class ReservaControl {
    
    ReservaDao reservaDao;
    HotelControl hotCont = new HotelControl();
    HospedeControl hosCont = new HospedeControl();
    QuartoControl quaCont = new QuartoControl();
    FuncionarioControl funCont = new FuncionarioControl();
    TipoPagamentoControl tipCont = new TipoPagamentoControl();
    
    public Reserva inserirReserva(Reserva res) throws SQLException, ClassNotFoundException {
       reservaDao = new ReservaDao();
       return reservaDao.inserir(res);
    }

    public Reserva alterarReserva(Reserva res) throws SQLException, ClassNotFoundException {
       reservaDao = new ReservaDao();
       return reservaDao.alterar(res);
    }

    public Reserva excluirReserva(Reserva res) throws SQLException, ClassNotFoundException {
       reservaDao = new ReservaDao();
       return reservaDao.excluir(res);

    }

    public Reserva buscarReserva(Reserva res) throws SQLException, ClassNotFoundException {
       reservaDao = new ReservaDao();
       res = reservaDao.buscar(res);
       
       Hotel hot = new Hotel(res.getIdHotel(),"","","","");
       hot = hotCont.buscarHotel(hot);        
       res.setHotel(hot);
       
       Quarto qua = new Quarto(res.getIdQuarto(),0,0,0,0,"");
       qua = quaCont.buscarQuarto(qua);
       res.setQuarto(qua);
       
       Hospede hos = new Hospede(res.getIdHospede(),"",0,"","","");
       hos = hosCont.buscarHospede(hos);
       res.setHospede(hos);
       
       TipoPagamento tip = new TipoPagamento(res.getIdTipoPagamento(),"");
       tip = tipCont.buscarTipoPagamento(tip);
       res.setTipoPagamento(tip);
       
       Funcionario func = new Funcionario(res.getIdFuncionario(),0,"","","",0,"","","","");
       func = funCont.buscarFuncionario(func);
       res.setFuncionario(func);
       
       return res;
    }

    public List<Reserva> ListaQuarto(Reserva res) throws SQLException, ClassNotFoundException {
       reservaDao = new ReservaDao();
       List<Reserva> ress = reservaDao.listar(res);

        for (Reserva listaReserva : ress) {
              Hotel hot = new Hotel(listaReserva.getIdHotel(),"","","","");
              listaReserva.setHotel(hotCont.buscarHotel(hot));
      
              Quarto qua = new Quarto(listaReserva.getIdQuarto(),0,0,0,0,"");
              listaReserva.setQuarto(quaCont.buscarQuarto(qua));
              
              Hospede hos = new Hospede(listaReserva.getIdHospede(),"",0,"","","");
              listaReserva.setHospede(hosCont.buscarHospede(hos));
              
              TipoPagamento tip = new TipoPagamento(listaReserva.getIdTipoPagamento(),"");
              listaReserva.setTipoPagamento(tipCont.buscarTipoPagamento(tip));
              
              Funcionario func = new Funcionario(listaReserva.getIdFuncionario(),0,"","","",0,"","","","");
              listaReserva.setFuncionario(funCont.buscarFuncionario(func));
        }

        return ress;
    }
    
}
