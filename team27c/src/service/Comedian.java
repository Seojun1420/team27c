//ÀÓ°¡Çö
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
	@Override
	public String toString() {
		return "Comedian [ComedianId=" + ComedianId + ", ComedianName=" + ComedianName + ", ComedianAge=" + ComedianAge+ "]";
	}
	
	
	
}
