package gerenciadorhotel.bean;

public class Hotel {
    
    private int idHotel;
    private String nomeHotel;
    private String cnpjHotel;
    private String telefoneHotel;
    private String enderecoHotel;

    public Hotel(int idHotel, String nomeHotel, String cnpjHotel, String telefoneHotel, String enderecoHotel) {
        this.idHotel = idHotel;
        this.nomeHotel = nomeHotel;
        this.cnpjHotel = cnpjHotel;
        this.telefoneHotel = telefoneHotel;
        this.enderecoHotel = enderecoHotel;
    }

    public int getIdHotel() {
        return idHotel;
    }

    public void setIdHotel(int idHotel) {
        this.idHotel = idHotel;
    }

    public String getNomeHotel() {
        return nomeHotel;
    }

    public void setNomeHotel(String nomeHotel) {
        this.nomeHotel = nomeHotel;
    }

    public String getCnpjHotel() {
        return cnpjHotel;
    }

    public void setCnpjHotel(String cnpjHotel) {
        this.cnpjHotel = cnpjHotel;
    }

    public String getTelefoneHotel() {
        return telefoneHotel;
    }

    public void setTelefoneHotel(String telefoneHotel) {
        this.telefoneHotel = telefoneHotel;
    }

    public String getEnderecoHotel() {
        return enderecoHotel;
    }

    public void setEnderecoHotel(String enderecoHotel) {
        this.enderecoHotel = enderecoHotel;
    }
    
    
    
}
