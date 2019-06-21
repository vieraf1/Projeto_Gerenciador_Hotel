package gerenciadorhotel.bean;

public class Funcionario {

    private int idFuncionario;
    private int idHotel;
    private String login;
    private String senha;
    private String nomeFuncionario;
    private int idadeFuncionario;
    private String rgFuncionario;
    private String cpfFuncionario;
    private String ctpsFuncionario;
    private String telefoneFuncionario;
    private Hotel hotel;

    public Funcionario(int idFuncionario, int idHotel, String nomeFuncionario, int idadeFuncionario, String rgFuncionario, String cpfFuncionario, String ctpsFuncionario, String telefoneFuncionario) {
        this.idFuncionario = idFuncionario;
        this.idHotel = idHotel;
        this.nomeFuncionario = nomeFuncionario;
        this.idadeFuncionario = idadeFuncionario;
        this.rgFuncionario = rgFuncionario;
        this.cpfFuncionario = cpfFuncionario;
        this.ctpsFuncionario = ctpsFuncionario;
        this.telefoneFuncionario = telefoneFuncionario;
    }

    public Funcionario(int idFuncionario, int idHotel, String login, String senha, String nomeFuncionario, int idadeFuncionario, String rgFuncionario, String cpfFuncionario, String ctpsFuncionario, String telefoneFuncionario) {
        this.idFuncionario = idFuncionario;
        this.idHotel = idHotel;
        this.login = login;
        this.senha = senha;
        this.nomeFuncionario = nomeFuncionario;
        this.idadeFuncionario = idadeFuncionario;
        this.rgFuncionario = rgFuncionario;
        this.cpfFuncionario = cpfFuncionario;
        this.ctpsFuncionario = ctpsFuncionario;
        this.telefoneFuncionario = telefoneFuncionario;
    }

    public Funcionario(int idFuncionario, int idHotel, String login, String senha, String nomeFuncionario, int idadeFuncionario, String rgFuncionario, String cpfFuncionario, String ctpsFuncionario, String telefoneFuncionario, Hotel hotel) {
        this.idFuncionario = idFuncionario;
        this.idHotel = idHotel;
        this.login = login;
        this.senha = senha;
        this.nomeFuncionario = nomeFuncionario;
        this.idadeFuncionario = idadeFuncionario;
        this.rgFuncionario = rgFuncionario;
        this.cpfFuncionario = cpfFuncionario;
        this.ctpsFuncionario = ctpsFuncionario;
        this.telefoneFuncionario = telefoneFuncionario;
        this.hotel = hotel;
    }

    public Funcionario(int idFuncionario, String login, String senha) {
        this.idFuncionario = idFuncionario;
        this.login = login;
        this.senha = senha;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public int getIdFuncionario() {
        return idFuncionario;
    }

    public void setIdFuncionario(int idFuncionario) {
        this.idFuncionario = idFuncionario;
    }

    public int getIdHotel() {
        return idHotel;
    }

    public void setIdHotel(int idHotel) {
        this.idHotel = idHotel;
    }

    public String getNomeFuncionario() {
        return nomeFuncionario;
    }

    public void setNomeFuncionario(String nomeFuncionario) {
        this.nomeFuncionario = nomeFuncionario;
    }

    public int getIdadeFuncionario() {
        return idadeFuncionario;
    }

    public void setIdadeFuncionario(int idadeFuncionario) {
        this.idadeFuncionario = idadeFuncionario;
    }

    public String getRgFuncionario() {
        return rgFuncionario;
    }

    public void setRgFuncionario(String rgFuncionario) {
        this.rgFuncionario = rgFuncionario;
    }

    public String getCpfFuncionario() {
        return cpfFuncionario;
    }

    public void setCpfFuncionario(String cpfFuncionario) {
        this.cpfFuncionario = cpfFuncionario;
    }

    public String getCtpsFuncionario() {
        return ctpsFuncionario;
    }

    public void setCtpsFuncionario(String ctpsFuncionario) {
        this.ctpsFuncionario = ctpsFuncionario;
    }

    public String getTelefoneFuncionario() {
        return telefoneFuncionario;
    }

    public void setTelefoneFuncionario(String telefoneFuncionario) {
        this.telefoneFuncionario = telefoneFuncionario;
    }

    public Hotel getHotel() {
        return hotel;
    }

    public void setHotel(Hotel hotel) {
        this.hotel = hotel;
    }

}
