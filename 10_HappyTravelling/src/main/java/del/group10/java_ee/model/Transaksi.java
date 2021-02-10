package del.group10.java_ee.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="employee")
public class Transaksi {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name="nama")
	private String name;
	@Column(name="email_address")
	private String email;
	@Column(name="address")
	private String alamat;
	@Column(name="tujuan")
	private String tujuan;
	@Column(name="asal")
	private String asal;

	
	public Transaksi() {}
	
	public Transaksi(String name, String email, String alamat,String tujuan,String asal) {
		super();
		this.name = name;
		this.email = email;
		this.alamat = alamat;
		this.tujuan = tujuan;
		this.asal = asal;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAlamat() {
		return alamat;
	}

	public void setAlamat(String alamat) {
		this.alamat = alamat;
	}
	public String getIdtujuan() {
		return tujuan;
	}

	public void setIdtujuan(String tujuan) {
		this.tujuan = tujuan;
	}
	public String getIdasal() {
		return asal;
	}

	public void setIdasal(String asal) {
		this.asal = asal;
	}
}
