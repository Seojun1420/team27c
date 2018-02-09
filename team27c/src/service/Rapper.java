package service;

public class Rapper {
	
	private int RapperId;
	private String RapperName;
	private int RapperAge;
	public int getRapperId() {
		return RapperId;
	}
	public void setRapperId(int rapperId) {
		RapperId = rapperId;
	}
	public String getRapperName() {
		return RapperName;
	}
	public void setRapperName(String rapperName) {
		RapperName = rapperName;
	}
	public int getRapperAge() {
		return RapperAge;
	}
	public void setRapperAge(int rapperAge) {
		RapperAge = rapperAge;
	}
	@Override
	public String toString() {
		return "Rapper [RapperId=" + RapperId + ", RapperName=" + RapperName + ", RapperAge=" + RapperAge + "]";
	}
	
}
