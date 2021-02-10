package del.group10.java_ee.repository;
import java.util.List;
import del.group10.java_ee.model.DaftarTujuan;
import org.springframework.data.jpa.repository.JpaRepository;
public interface TujuanRepository extends JpaRepository<DaftarTujuan, Integer> {
	DaftarTujuan findByTujuan(String tujuan);
	List<DaftarTujuan> findAll();
}
