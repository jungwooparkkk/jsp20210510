package ch14.bean;

public class Employee {
		private int id;
		private String lastName;
		private String firstName;
		private String notes;
		
		
		
		@Override
		public String toString() {
			return "Employee [id=" + id + ", lastName=" + lastName + ", firstName=" + firstName + ", notes=" + notes
					+ "]";
		}
		public void setNotes(String notes) {
			this.notes = notes;
		}
		public String getNotes() {
			return notes;
		}
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getLastName() {
			return lastName;
		}
		public void setLastName(String lastName) {
			this.lastName = lastName;
		}
		public String getFirstName() {
			return firstName;
		}
		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}
}