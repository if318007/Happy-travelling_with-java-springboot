package del.group10.java_ee.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import del.group10.java_ee.model.Transaksi;
import del.group10.java_ee.repository.TransaksiRepository;

@Service
public class TransaksiServiceImpl implements TransaksiService{

	@Autowired
	private TransaksiRepository transaksiRepository;
	
	@Override
	public List<Transaksi> getAllEmployee() {
		return this.transaksiRepository.findAll();
	}

	@Override
	public void saveEmployee(Transaksi transaksi) {
		this.transaksiRepository.save(transaksi);
	}

	@Override
	public void deleteEmployeeById(int id) {
		this.transaksiRepository.deleteById(id);
	}

	@Override
	public Transaksi getEmployeeById(int id) {
		Optional<Transaksi> optional = transaksiRepository.findById(id);
		Transaksi transaksi = null;
		if(optional.isPresent()) {
			transaksi = optional.get();
		}else {
			throw new RuntimeException("Transaksi tidak ditemukan");
		}
		
		return transaksi;
	}

}
