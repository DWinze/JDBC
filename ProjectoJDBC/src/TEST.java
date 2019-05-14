import java.sql.SQLException;

public class TEST {

	public static void main(String[] args) {
		
		
		Conexion c = new Conexion();
		
		
		try {
			c.conectar();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

	}

}
