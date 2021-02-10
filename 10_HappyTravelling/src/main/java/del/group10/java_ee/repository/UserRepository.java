package del.group10.java_ee.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import del.group10.java_ee.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

}
