package poly.util;

public class EncryptTest {

	public static void main(String[] args) throws Exception{
		// TODO Auto-generated method stub
		System.out.println("해시 암호화 알고리즘");
		//암호화 문자열
		String str = "암호화할 문자열";
		
		String hashEnc = EncryptUtil.encHashSHA256(str);
		
		System.err.println("hashEnc : "+hashEnc);
		
		//AES128-CBC 암호화 알고리즘 실행
		String enc = EncryptUtil.encAES128CBC(str);
		
		//AES128-CBC 암호화 알고리즘 결과 출력
		System.out.println("enc : "+enc);
		
		//AES128-CBC 복호화 알고리즘 실행
		String dec = EncryptUtil.decAES128CBC(enc);
		
		//AES128-CBC 복호화 알고리즘 결과 출력
		System.out.println("dec : "+dec);
		
		
		
	}

}
