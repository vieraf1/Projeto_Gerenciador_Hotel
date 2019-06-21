package gerenciadorhotel.control;

import gerenciadorhotel.bean.Hotel;
import gerenciadorhotel.dao.HotelDao;
import java.sql.SQLException;
import java.util.List;

public class HotelControl {
    
    HotelDao hotelDao;
    
    public Hotel inserirHotel(Hotel hot) throws SQLException, ClassNotFoundException {
       hotelDao = new HotelDao();
       return hotelDao.inserir(hot);
    }

    public Hotel alterarHotel(Hotel hot) throws SQLException, ClassNotFoundException {
       hotelDao = new HotelDao();
       return hotelDao.alterar(hot);
    }

    public Hotel excluirHotel(Hotel hot) throws SQLException, ClassNotFoundException {
       hotelDao = new HotelDao();
       return hotelDao.excluir(hot);
    }

    public Hotel buscarHotel(Hotel hot) throws SQLException, ClassNotFoundException {
       hotelDao = new HotelDao();
       return hotelDao.buscar(hot);
    }

    public List<Hotel> ListaHotel(Hotel hot) throws SQLException, ClassNotFoundException {
       hotelDao = new HotelDao();
       return hotelDao.listar(hot);
    }
}