//team27c ������

package service;

public class Rapper {
	
	private int RapperId;//private �� int Ÿ�� RapperId�� ����
	private String RapperName;
	private int RapperAge;
	public int getRapperId() {
		return RapperId;//�̰����ʹ� �ҽ� �������� �����Ѵ�.
	}
	public void setRapperId(int rapperId) {
		RapperId = rapperId;//set�� ���� �����ϰ�
	}
	public String getRapperName() {//get �� ���� �����´�. ������ �ʿ��ϴ�.
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
	@Override//toString �϶�� �ϴµ� �˻��ص� ����� ã�� ����� �𸣰ڴ�. ����� �˻��ؾ��ұ�?
	public String toString() {
		return "Rapper [RapperId=" + RapperId + ", RapperName=" + RapperName + ", RapperAge=" + RapperAge + "]";
	}

	
}
