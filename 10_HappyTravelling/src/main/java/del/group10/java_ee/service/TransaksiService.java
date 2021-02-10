package del.group10.java_ee.service;

import java.util.List;

import del.group10.java_ee.model.Transaksi;

public interface TransaksiService {
	
	List<Transaksi> getAllEmployee();
	void saveEmployee(Transaksi transaksi);
	void deleteEmployeeById(int id);
	Transaksi getEmployeeById(int id);
}
