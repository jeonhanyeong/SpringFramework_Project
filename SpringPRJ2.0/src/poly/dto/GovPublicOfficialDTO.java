package poly.dto;

public class GovPublicOfficialDTO {
   private int public_official_no;
   private String public_official_id;
   private String password;
   private String name;
   private String affiliated_department;
   private String public_official_tel;
   private int cities_no;
   private String metropolitan_city_name;
   private String cities_name;
   
   public String getCities_name() {
	return cities_name;
}
public void setCities_name(String cities_name) {
	this.cities_name = cities_name;
}
   public String getMetropolitan_city_name() {
	return metropolitan_city_name;
}
public void setMetropolitan_city_name(String metropolitan_city_name) {
	this.metropolitan_city_name = metropolitan_city_name;
}
   
   public int getPublic_official_no() {
      return public_official_no;
   }
   public void setPublic_official_no(int public_official_no) {
      this.public_official_no = public_official_no;
   }
   public String getPublic_official_id() {
      return public_official_id;
   }
   public void setPublic_official_id(String public_official_id) {
      this.public_official_id = public_official_id;
   }
   public String getPassword() {
      return password;
   }
   public void setPassword(String password) {
      this.password = password;
   }
   public String getName() {
      return name;
   }
   public void setName(String name) {
      this.name = name;
   }
   public String getAffiliated_department() {
      return affiliated_department;
   }
   public void setAffiliated_department(String affiliated_department) {
      this.affiliated_department = affiliated_department;
   }
   public String getPublic_official_tel() {
      return public_official_tel;
   }
   public void setPublic_official_tel(String public_official_tel) {
      this.public_official_tel = public_official_tel;
   }
   public int getCities_no() {
      return cities_no;
   }
   public void setCities_no(int cities_no) {
      this.cities_no = cities_no;
   }
   
}