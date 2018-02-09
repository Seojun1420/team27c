//team27c 박지하

package service;

public class Rapper {
	
	private int RapperId;//private 로 int 타입 RapperId를 선언
	private String RapperName;
	private int RapperAge;
	public int getRapperId() {
		return RapperId;//이곳부터는 소스 생성으로 생성한다.
	}
	public void setRapperId(int rapperId) {
		RapperId = rapperId;//set은 값을 세팅하고
	}
	public String getRapperName() {//get 은 값을 가져온다. 리턴이 필요하다.
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
	@Override//toString 하라고 하는데 검색해도 결과를 찾을 방법을 모르겠다. 뭐라고 검색해야할까?
	public String toString() {
		return "Rapper [RapperId=" + RapperId + ", RapperName=" + RapperName + ", RapperAge=" + RapperAge + "]";
	}

	
}
