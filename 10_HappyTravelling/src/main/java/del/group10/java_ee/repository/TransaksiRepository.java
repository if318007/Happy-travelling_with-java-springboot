package del.group10.java_ee.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import del.group10.java_ee.model.Transaksi;

public interface TransaksiRepository extends JpaRepository<Transaksi, Integer>{

}
