import java.nio.file.Paths;
import java.nio.file.Files;
import java.security.*;
import java.io.*;

class ComputeSHA
{
    public static void main(String[] args) throws Exception {
//        File f = new File("./sample-input.txt");
        String filename = args[0];
        StringBuffer output = new StringBuffer();
//        byte[] data = Files.readAllBytes(f.toPath());
        byte[] data = Files.readAllBytes(Paths.get(filename));

        MessageDigest md = MessageDigest.getInstance("SHA-1");
        md.update(data);
        byte[] res = md.digest();
        for (byte bytes : res) {
            output.append(String.format("%02x", bytes & 0xff));
        }
//        System.out.println("Hello world!");
        System.out.println(output.toString());
    }
}