/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package projectii;

/**
 *
 * @author pc
 */
import java.util.Scanner;
public class Book {
    public static void main(String[] args) {
        Book book = new Book();
        System.out.println("Hien thi sach: ");
        System.out.println(book.toString());
        int n;
       Scanner sc=new Scanner(System.in);
               Book book3=new Book();
        System.out.println("input infor book");
        book3.toString();
        System.out.println("display infor of book");
       Book[] list= new Book[100];
        n=sc.nextInt();
        for(int i= 0;i<n;i++)
        {
            Book  book1= new Book();
            book1.toString();
            list[i]=book1;      
        }
        System.out.println("Output n bookt");
        for( int i = 0; i< n;i++)
        {
            System.out.println(list[i].toString());
        }
}

}


