package functions;

public class encryption {
	public final int key = 14;

	public String encrypt(String str) {
		String res = "";
		for (char c : str.toCharArray()) {
			res += (char) (c + key);
		}
		return res;
	}

	public String unEncrypt(String str) {
		String res = "";
		for (char c : str.toCharArray()) {
			res += (char) (c - key);
		}
		return res;
	}

}
