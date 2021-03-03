package in.responsenet.tcet.model;

public class Register {

		private String id;
		private String Name;
		private String Address;
		private String Phone;
		private String Email;
		private String Exam;
		private String StateRank;
		private String AllIndiaRank;
		private String SeatNumber;
		private String password;
		public Register(String id,String Name,String Address,String Phone,String Email,String Exam,String StateRank,String AllIndiaRank, String SeatNumber,String password)
		{
			this.id=id;
			this.Name=Name;
			this.Address=Address;
			this.Exam=Exam;
			this.Phone=Phone;
			this.Email=Email;
			this.StateRank=StateRank;
			this.AllIndiaRank=AllIndiaRank;
			this.SeatNumber=SeatNumber;
			this.password=password;
			
		}
		public Register(String Name,String Address,String Phone,String Email,String Exam,String StateRank,String AllIndiaRank, String SeatNumber,String password)
		{
			this.Name=Name;
			this.Address=Address;
			this.Phone=Phone;
			this.Exam=Exam;
			this.Email=Email;
			this.StateRank=StateRank;
			this.AllIndiaRank=AllIndiaRank;
			this.SeatNumber=SeatNumber;
			this.password=password;
			
		}
		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		public String getName() {
			return Name;
		}
		public void setName(String name) {
			Name = name;
		}
		public String getAddress() {
			return Address;
		}
		public void setAddress(String address) {
			Address = address;
		}
		public String getPhone() {
			return Phone;
		}
		public void setPhone(String phone) {
			Phone = phone;
		}
		public String getEmail() {
			return Email;
		}
		public void setEmail(String email) {
			Email = email;
		}
		public String getExam() {
			return Exam;
		}
		public void setExam(String exam) {
			Exam = exam;
		}
		public String getStateRank() {
			return StateRank;
		}
		public void setStateRank(String stateRank) {
			StateRank = stateRank;
		}
		public String getAllIndiaRank() {
			return AllIndiaRank;
		}
		public void setAllIndiaRank(String allIndiaRank) {
			AllIndiaRank = allIndiaRank;
		}
		public String getSeatNumber() {
			return SeatNumber;
		}
		public void setSeatNumber(String seatNumber) {
			SeatNumber = seatNumber;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			password = password;
		}
		
	}


