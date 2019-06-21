package gerenciadorhotel.bean;

public class Quarto {
    
    private int idQuarto;
    private int idHotel;
    private int numeroQuarto;
    private float valorDiaria;
    private int statusQuarto;
    private String telefoneQuarto;
    private Hotel hotel;

    public Quarto(int idQuarto, int idHotel, int numeroQuarto, float valorDiaria, int statusQuarto, String telefoneQuarto) {
        this.idQuarto = idQuarto;
        this.idHotel = idHotel;
        this.numeroQuarto = numeroQuarto;
        this.valorDiaria = valorDiaria;
        this.statusQuarto = statusQuarto;
        this.telefoneQuarto = telefoneQuarto;
    }

    public int getIdQuarto() {
        return idQuarto;
    }

    public void setIdQuarto(int idQuarto) {
        this.idQuarto = idQuarto;
    }

    public int getIdHotel() {
        return idHotel;
    }

    public void setIdHotel(int idHotel) {
        this.idHotel = idHotel;
    }

    public int getNumeroQuarto() {
        return numeroQuarto;
    }

    public void setNumeroQuarto(int numeroQuarto) {
        this.numeroQuarto = numeroQuarto;
    }

    public float getValorDiaria() {
        return valorDiaria;
    }

    public void setValorDiaria(float valorDiaria) {
        this.valorDiaria = valorDiaria;
    }

    public int getStatusQuarto() {
        return statusQuarto;
    }

    public void setStatusQuarto(int statusQuarto) {
        this.statusQuarto = statusQuarto;
    }

    public String getTelefoneQuarto() {
        return telefoneQuarto;
    }

    public void setTelefoneQuarto(String telefoneQuarto) {
        this.telefoneQuarto = telefoneQuarto;
    }

    public Hotel getHotel() {
        return hotel;
    }

    public void setHotel(Hotel hot) {
        this.hotel = hot;
    }
    
    
    
}
