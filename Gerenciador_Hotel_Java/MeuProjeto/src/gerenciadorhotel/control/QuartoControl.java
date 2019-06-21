package gerenciadorhotel.control;

import gerenciadorhotel.bean.Quarto;
import gerenciadorhotel.bean.Hotel;
import gerenciadorhotel.dao.QuartoDao;
import java.sql.SQLException;
import java.util.List;

public class QuartoControl {
    
    QuartoDao quartoDao;
    HotelControl hotCont = new HotelControl();
    
    public Quarto inserirQuarto(Quarto qua) throws SQLException, ClassNotFoundException {
       quartoDao = new QuartoDao();
       return quartoDao.inserir(qua);
    }

    public Quarto alterarQuarto(Quarto qua) throws SQLException, ClassNotFoundException {
       quartoDao = new QuartoDao();
       return quartoDao.alterar(qua);
    }

    public Quarto excluirQuarto(Quarto qua) throws SQLException, ClassNotFoundException {
       quartoDao = new QuartoDao();
       return quartoDao.excluir(qua);

    }

    public Quarto buscarQuarto(Quarto qua) throws SQLException, ClassNotFoundException {
       quartoDao = new QuartoDao();
       qua = quartoDao.buscar(qua);
       
       Hotel hot = new Hotel(qua.getIdHotel(),"","","","");
       hot = hotCont.buscarHotel(hot);        
       qua.setHotel(hot);
        
       return qua;
    }

    public List<Quarto> ListaQuarto(Quarto qua) throws SQLException, ClassNotFoundException {
       quartoDao = new QuartoDao();
       List<Quarto> quats = quartoDao.listar(qua);

        for (Quarto listaQuarto : quats) {
              Hotel hot = new Hotel(listaQuarto.getIdHotel(),"","","","");
              listaQuarto.setHotel(hotCont.buscarHotel(hot));
        }

        return quats;
    }
    
}
