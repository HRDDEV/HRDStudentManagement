package ultilities;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public class DBUtility {

	public static Connection getConnection() {
		Connection c = null;
		Properties props = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			props = new Properties();
			props.put("user", "root");
			props.put("password", "123456");
			c = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/hrd_student", props);
			return c;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	public static void main(String[] args) {
		getConnection();
	}
}
