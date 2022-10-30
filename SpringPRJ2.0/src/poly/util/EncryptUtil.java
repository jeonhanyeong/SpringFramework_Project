package poly.util;

import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.spec.AlgorithmParameterSpec;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

import org.apache.tomcat.util.codec.binary.Base64;

public class EncryptUtil {
	final static String addMessage = "PolyDataAnalysis";	//임의 값
	
	final static byte[] ivBytes = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
	
	//AES128-CBC 암호화 알고리즘에 사용되는 키 (16자리 문자만 가능함)
	final static String key = "PolyTechnic12345";
	
	/**
	 * 해시 알고리즘
	 */
	public static String encHashSHA256(String str)throws Exception{
		String res = ""; // 암호화 결과괎이 저장되는 변수
        String plantText = addMessage + str; // 암호화 시킬 값에 보안강화를 위해 임의 값을 추가함

        try {

            // 자바는 기본적으로 표준 암호화 알고리즘을 java.security 패키지를 통해 제공함
            // 여러 해시 알고리즘 중 가장 많이 사용되는 SHA-256를 지원하고 있음
            MessageDigest sh = MessageDigest.getInstance("SHA-256");

            sh.update(plantText.getBytes());

            byte[] byteData = sh.digest();

            StringBuilder sb = new StringBuilder();

            for (byte byteDatum : byteData) {
                sb.append(Integer.toString((byteDatum & 0xff) + 0x100, 16).substring(1));

            }

            res = sb.toString();

            // 자바에서 제공하지 알고리즘이 아닌 경우, 에러 발생
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();

            res = "";
        }

        return res;
	}
	
	
	/**
	 * AES128 CBC 암호화 함수
	 * 
	 * 128은 암호화 키 길이를 의미함 128비트는 = 16비트
	 */
	public static String encAES128CBC(String str)
		throws UnsupportedEncodingException, NoSuchAlgorithmException, NoSuchPaddingException,
		InvalidKeyException, InvalidAlgorithmParameterException, IllegalBlockSizeException, BadPaddingException{
		
		byte[] testBytes = str.getBytes("UTF-8");
		AlgorithmParameterSpec ivSpec = new IvParameterSpec(ivBytes);
		SecretKeySpec newKey = new SecretKeySpec(key.getBytes("UTF-8"), "AES");
		Cipher cipher = null;
		cipher = Cipher.getInstance("AES/CBC/PKCSSPadding");
		cipher.init(Cipher.ENCRYPT_MODE, newKey, ivSpec);
		return Base64.encodeBase64String(cipher.doFinal(testBytes));
	}
	
	/**
	 * AES128 CBC 혹호화 함수
	 * 
	 * 128은 암호화 키 길이를 의미함 128비트는 = 16바이트
	 */
	public static String decAES128CBC(String str)
		throws UnsupportedEncodingException, NoSuchAlgorithmException, NoSuchPaddingException,
		InvalidKeyException, InvalidAlgorithmParameterException, IllegalBlockSizeException, BadPaddingException{
		
		byte[] testBytes = Base64.decodeBase64(str);
		AlgorithmParameterSpec ivSpec = new IvParameterSpec(ivBytes);
		SecretKeySpec newKey = new SecretKeySpec(key.getBytes("UTF-8"), "AES");
		Cipher cipher = Cipher.getInstance("AES/CBC/PKCSSPadding");
		cipher.init(Cipher.DECRYPT_MODE, newKey, ivSpec);
		return new String(cipher.doFinal(testBytes), "UTF-8");
	}
	
	
	
	
	
	
}
