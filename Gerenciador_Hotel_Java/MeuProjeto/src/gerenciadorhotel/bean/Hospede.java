package gerenciadorhotel.bean;

public class Hospede {
    
    private int idHospede;
    private String nomeHospede;
    private int idadeHospede;
    private String rgHospede;
    private String cpfHospede;
    private String telefoneHospede;

    public Hospede(int idHospede, String nomeHospede, int idadeHospede, String rgHospede, String cpfHospede, String telefoneHospede) {
        this.idHospede = idHospede;
        this.nomeHospede = nomeHospede;
        this.idadeHospede = idadeHospede;
        this.rgHospede = rgHospede;
        this.cpfHospede = cpfHospede;
        this.telefoneHospede = telefoneHospede;
    }

    public int getIdHospede() {
        return idHospede;
    }

    public void setIdHospede(int idHospede) {
        this.idHospede = idHospede;
    }

    public String getNomeHospede() {
        return nomeHospede;
    }

    public void setNomeHospede(String nomeHospede) {
        this.nomeHospede = nomeHospede;
    }

    public int getIdadeHospede() {
        return idadeHospede;
    }

    public void setIdadeHospede(int idadeHospede) {
        this.idadeHospede = idadeHospede;
    }

    public String getRgHospede() {
        return rgHospede;
    }

    public void setRgHospede(String rgHospede) {
        this.rgHospede = rgHospede;
    }

    public String getCpfHospede() {
        return cpfHospede;
    }

    public void setCpfHospede(String cpfHospede) {
        this.cpfHospede = cpfHospede;
    }

    public String getTelefoneHospede() {
        return telefoneHospede;
    }

    public void setTelefoneHospede(String telefoneHospede) {
        this.telefoneHospede = telefoneHospede;
    }
    
    
    
}
