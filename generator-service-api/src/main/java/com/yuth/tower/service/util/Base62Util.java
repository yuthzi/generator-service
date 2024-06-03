package com.yuth.tower.service.util;

public class Base62Util {

    private static final int SCALE = 62;

    private static char[] encodes = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();

    private static byte[] decodes = new byte[256];

    static {
        for (int i = 0; i < encodes.length; i++) {
            decodes[encodes[i]] = (byte) i;
        }
    }


    public static String encode(long num) {
        StringBuilder sb = new StringBuilder();
        while (num > 0) {
            sb.append(encodes[(int) (num % SCALE)]);
            num /= SCALE;
        }

        return sb.reverse().toString();
    }

    public static long decodeToLong(String base62Str) {
        long num = 0;
        long coefficient = 1;
        for (int i = base62Str.length() - 1; i >= 0; i--) {
            num += decodes[base62Str.charAt(i)] * coefficient;
            coefficient *= SCALE;
        }

        return num;
    }

}
