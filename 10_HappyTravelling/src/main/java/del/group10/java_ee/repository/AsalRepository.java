package del.group10.java_ee.repository;
import java.util.List;
import del.group10.java_ee.model.DaftarAsal;
import org.springframework.data.jpa.repository.JpaRepository;
public interface AsalRepository extends JpaRepository<DaftarAsal, Integer> {
	DaftarAsal findByAsal(String tujuan);
	List<DaftarAsal> findAll();
}
