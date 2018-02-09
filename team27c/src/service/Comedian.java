//team27c 임가현
package service;
public class Comedian {
	
	private int ComedianId;
	private String ComedianName;
	private int ComedianAge;
	
	public int getComedianId() {
		return ComedianId;
	}
	public void setComedianId(int comedianId) {
		ComedianId = comedianId;
	}
	public String getComedianName() {
		return ComedianName;
	}
	public void setComedianName(String comedianName) {
		ComedianName = comedianName;
	}
	public int getComedianAge() {
		return ComedianAge;
	}
	public void setComedianAge(int comedianAge) {
		ComedianAge = comedianAge;
	}
	// 오버라이딩 : 오버라이딩은 '메소드 재정의'를 하는 것으로, '메소드 재정의' 란 기존에 있던 메소드를 다시 정의하여 사용하는것이다.
	@Override
	public String toString() {
		return "Comedian [ComedianId=" + ComedianId + ", ComedianName=" + ComedianName + ", ComedianAge=" + ComedianAge+ "]";
	}
	
	
	
}
