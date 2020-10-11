<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*"%>
<%@page import="dto.*"%>
<%
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "akra";
	String userid = "root";
	String password = "";
	try {
		Class.forName(driver);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		String roll_no = request.getParameter("roll_no");
		connection = DriverManager.getConnection(connectionUrl + database, userid, password);
		statement = connection.createStatement();
		String sql = "select * from user ";
		resultSet = statement.executeQuery(sql);
		List<String> names = new ArrayList<>();
		//	Map<String>
		while (resultSet.next()){
			//names.add(resultSet.getString("id"));
			names.add(resultSet.getString("userEmail"));
			//names.add(resultSet.getString("password"));
		}
		out.println(names);
		connection.close();
	} 
	catch (Exception e) {
		e.printStackTrace();
	}
%>