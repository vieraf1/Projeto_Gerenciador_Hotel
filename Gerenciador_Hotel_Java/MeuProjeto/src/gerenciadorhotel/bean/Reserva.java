package gerenciadorhotel.bean;

import java.util.Date;

public class Reserva {
    
    private int idReserva;
    private int idHotel;
    private int idQuarto;
    private int idHospede;
    private int idTipoPagamento;
    private int idFuncionario;
    private Date dataInicio;
    private Date dataFim;
    private float valorTotal;
    private Hotel hotel;
    private Quarto quarto;
    private Hospede hospede;
    private TipoPagamento tipoPagamento;
    private Funcionario funcionario;

    public Reserva(int idReserva, int idHotel, int idQuarto, int idHospede, int idTipoPagamento, int idFuncionario, Date dataInicio, Date dataFim, float valorTotal) {
        this.idReserva = idReserva;
        this.idHotel = idHotel;
        this.idQuarto = idQuarto;
        this.idHospede = idHospede;
        this.idTipoPagamento = idTipoPagamento;
        this.idFuncionario = idFuncionario;
        this.dataInicio = dataInicio;
        this.dataFim = dataFim;
        this.valorTotal = valorTotal;
    }

    public int getIdReserva() {
        return idReserva;
    }

    public void setIdReserva(int idReserva) {
        this.idReserva = idReserva;
    }

    public int getIdHotel() {
        return idHotel;
    }

    public void setIdHotel(int idHotel) {
        this.idHotel = idHotel;
    }

    public int getIdQuarto() {
        return idQuarto;
    }

    public void setIdQuarto(int idQuarto) {
        this.idQuarto = idQuarto;
    }

    public int getIdHospede() {
        return idHospede;
    }

    public void setIdHospede(int idHospede) {
        this.idHospede = idHospede;
    }

    public int getIdTipoPagamento() {
        return idTipoPagamento;
    }

    public void setIdTipoPagamento(int idTipoPagamento) {
        this.idTipoPagamento = idTipoPagamento;
    }

    public int getIdFuncionario() {
        return idFuncionario;
    }

    public void setIdFuncionario(int idFuncionario) {
        this.idFuncionario = idFuncionario;
    }

    public Date getDataInicio() {
        return dataInicio;
    }

    public void setDataInicio(Date dataInicio) {
        this.dataInicio = dataInicio;
    }

    public Date getDataFim() {
        return dataFim;
    }

    public void setDataFim(Date dataFim) {
        this.dataFim = dataFim;
    }

    public float getValorTotal() {
        return valorTotal;
    }

    public void setValorTotal(float valorTotal) {
        this.valorTotal = valorTotal;
    }

    public Hotel getHotel() {
        return hotel;
    }

    public void setHotel(Hotel hotel) {
        this.hotel = hotel;
    }

    public Quarto getQuarto() {
        return quarto;
    }

    public void setQuarto(Quarto quarto) {
        this.quarto = quarto;
    }

    public Hospede getHospede() {
        return hospede;
    }

    public void setHospede(Hospede hospede) {
        this.hospede = hospede;
    }

    public TipoPagamento getTipoPagamento() {
        return tipoPagamento;
    }

    public void setTipoPagamento(TipoPagamento tipoPagamento) {
        this.tipoPagamento = tipoPagamento;
    }

    public Funcionario getFuncionario() {
        return funcionario;
    }

    public void setFuncionario(Funcionario funcionario) {
        this.funcionario = funcionario;
    }
    
}