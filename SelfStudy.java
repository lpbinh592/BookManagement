/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package self.study;
import java.util.Scanner;
/**

 *
 * @author pc
 */
public class SelfStudy {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        System.out.println("Hello World!");
        int a = 0, b = 0; 
        int sum = a + b;
        int sub = a - b;
        int mul = a * b;
        double div = a/b;
        Scanner sc = new Scanner(System.in);
        System.out.println("Please Enter a: ");
        a=sc.nextInt();
        System.out.println("Please Enter b: ");
        b=sc.nextInt();
        System.out.println("Addition a & b: "+ sum);
        System.out.println("Sub: "+ sub);
        System.out.println("Mul: "+ mul);
        System.out.println("Div: "+ div);
    }
    
}
