package gerenciadorhotel.bean;

public class TipoPagamento {
    
    private int idTipoPagamento;
    private String descricaoTipoPagamento;

    public TipoPagamento(int idTipoPagamento, String descricaoTipoPagamento) {
        this.idTipoPagamento = idTipoPagamento;
        this.descricaoTipoPagamento = descricaoTipoPagamento;
    }

    public int getIdTipoPagamento() {
        return idTipoPagamento;
    }

    public void setIdTipoPagamento(int idTipoPagamento) {
        this.idTipoPagamento = idTipoPagamento;
    }

    public String getDescricaoTipoPagamento() {
        return descricaoTipoPagamento;
    }

    public void setDescricaoTipoPagamento(String descricaoTipoPagamento) {
        this.descricaoTipoPagamento = descricaoTipoPagamento;
    }
    
}
