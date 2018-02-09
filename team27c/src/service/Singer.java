package service;

public class Singer {
	private int Singer_Id;
	private String Singer_Name;
	private int Singer_Age;
	public int getSinger_Id() {
		return Singer_Id;
	}
	public void setSinger_Id(int singer_Id) {
		Singer_Id = singer_Id;
	}
	public String getSinger_Name() {
		return Singer_Name;
	}
	public void setSinger_Name(String singer_Name) {
		Singer_Name = singer_Name;
	}
	public int getSinger_Age() {
		return Singer_Age;
	}
	public void setSinger_Age(int singer_Age) {
		Singer_Age = singer_Age;
	}
	@Override
	public String toString() {
		return "Singer [Singer_Id=" + Singer_Id + ", Singer_Name=" + Singer_Name + ", Singer_Age=" + Singer_Age
				+ ", getSinger_Id()=" + getSinger_Id() + ", getSinger_Name()=" + getSinger_Name() + ", getSinger_Age()="
				+ getSinger_Age() + "]";
	}
	
}
