package del.group10.java_ee.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Asal")
public class DaftarAsal {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idasal;
	
	
	@Column(name="asal")
	private String asal;
	
	
	public DaftarAsal() {}
	
	public DaftarAsal(String asal) {
		super();
		this.asal = asal;
	
		
	}

	public long getIdAsal() {
		return idasal;
	}

	public void setIdAsal(int idasal) {
		this.idasal = idasal;
	}

	public String getAsal() {
		return asal;
	}

	public void setAsal(String asal) {
		this.asal = asal;
	}

}
