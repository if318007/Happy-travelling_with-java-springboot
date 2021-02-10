package del.group10.java_ee.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Tujuan")
public class DaftarTujuan {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idtujuan;
	
	
	@Column(name="tujuan")
	private String tujuan;
	
	
	public DaftarTujuan() {}
	
	public DaftarTujuan(String tujuan) {
		super();
		this.tujuan = tujuan;
	
		
	}

	public long getIdTujuan() {
		return idtujuan;
	}

	public void setIdTujuan(int id) {
		this.idtujuan = id;
	}

	public String getTujuan() {
		return tujuan;
	}

	public void setTujuan(String tujuan) {
		this.tujuan = tujuan;
	}

}
