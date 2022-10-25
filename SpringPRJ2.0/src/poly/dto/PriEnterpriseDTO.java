package poly.dto;

public class PriEnterpriseDTO {
   private int pri_enterprise_no;
   private String pri_enterprise_id;
   private String pri_enterprise_password;
   private String pri_enterprise_name;
   private String pri_enterprise_tel;
   private String pri_registration_number;
   private int cities_no;
   
   public String getPri_enterprise_id() {
      return pri_enterprise_id;
   }
   public void setPri_enterprise_id(String pri_enterprise_id) {
      this.pri_enterprise_id = pri_enterprise_id;
   }
   public String getPri_enterprise_password() {
      return pri_enterprise_password;
   }
   public void setPri_enterprise_password(String pri_enterprise_password) {
      this.pri_enterprise_password = pri_enterprise_password;
   }
   public String getPri_enterprise_name() {
      return pri_enterprise_name;
   }
   public void setPri_enterprise_name(String pri_enterprise_name) {
      this.pri_enterprise_name = pri_enterprise_name;
   }
   public String getPri_enterprise_tel() {
      return pri_enterprise_tel;
   }
   public void setPri_enterprise_tel(String pri_enterprise_tel) {
      this.pri_enterprise_tel = pri_enterprise_tel;
   }
   public String getPri_registration_number() {
      return pri_registration_number;
   }
   public void setPri_registration_number(String pri_registration_number) {
      this.pri_registration_number = pri_registration_number;
   }
   public int getPri_enterprise_no() {
      return pri_enterprise_no;
   }
   public void setPri_enterprise_no(int pri_enterprise_no) {
      this.pri_enterprise_no = pri_enterprise_no;
   }
   public int getCities_no() {
      return cities_no;
   }
   public void setCities_no(int cities_no) {
      this.cities_no = cities_no;
   }

}