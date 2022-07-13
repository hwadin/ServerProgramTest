package vo;

public class TestGuestBookVO {
	
	private int id;
	private String guestName;
	private String password;
	private String message;
	
	public TestGuestBookVO() {}
	
	// 등록 용
	public TestGuestBookVO(String guestName, String password, String message) {
		this.guestName = guestName;
		this.password = password;
		this.message = message;
	}

	// List용
	public TestGuestBookVO(int id, String guestName, String password, String message) {
		this.id = id;
		this.guestName = guestName;
		this.password = password;
		this.message = message;
	}

	
	// getter , setter , toString
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getGuestName() {
		return guestName;
	}

	public void setGuestName(String guestName) {
		this.guestName = guestName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public String toString() {
		return "TestGuestBookVO [id=" + id + ", guestName=" + guestName + ", password=" + password + ", message="
				+ message + "]";
	}

}
