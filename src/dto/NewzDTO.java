/**
 * 
 */
package dto;

/**
 * @author User
 *
 */
public class NewzDTO {

	/**
	 * 
	 */
	public NewzDTO() {
		// TODO Auto-generated constructor stub
	}

	private long id;
	private String userEmail;
	private String role;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

}
