package dbcon;
import java.sql.*;  

public class AccessDb {

	Database db = new Database();
	//private String sql = "";
	private Connection con;
	private PreparedStatement pst;
	private ResultSet rs;
	private ResultSet generatedKeys = null;
	
	public AccessDb() {}
	
	public ResultSet doquery(String query) {
		try {
			Class.forName(db.getDriver());
			con = DriverManager.getConnection(db.getUrl(),db.getUser(),db.getPass());
			pst = con.prepareStatement(query);
			rs = pst.executeQuery();
			return rs;
		}catch(SQLException | ClassNotFoundException e) {
			return null;
		}
	}
	
	public int doqueryinsert(String query) {
		try {
			Class.forName(db.getDriver());
			con = DriverManager.getConnection(db.getUrl(),db.getUser(),db.getPass());
			pst = (PreparedStatement ) con.prepareStatement(query,  Statement.RETURN_GENERATED_KEYS);
			int affectedRows = pst.executeUpdate();
	        if (affectedRows == 0) {
	            throw new SQLException("Creating user failed, no rows affected.");
	        }

	        generatedKeys = pst.getGeneratedKeys();
	        int id = -1;
	        if (generatedKeys.next()) {
	            id = generatedKeys.getInt(1);
	            return id;
	           // id = -1;
	        } else {
	            throw new SQLException("Creating user failed, no generated key obtained.");
	        }
		}catch(SQLException | ClassNotFoundException e) {
			System.out.println(e);
			return 0;
		}
	}
	public void closeconn() {
		try {
			con.close();
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
