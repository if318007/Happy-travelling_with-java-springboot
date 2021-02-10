package del.group10.java_ee.service;

import  del.group10.java_ee.model.User;

public interface UserService {

	public void saveUser(User user);
	
	public boolean isUserAlreadyPresent(User user);
}
