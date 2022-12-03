/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package projectii;

import java.util.Scanner;

/**
 *
 * @author pc
 */
public class Management {
    int id;
    String name;
    String author;
    String local;
    double price;
    String desc;
    public Management(int id, String name){
        this.id=id;
        this.name=name;
    }
    public Management(){
        
    }
    public Management(int id, String name, double price){
        this.id=id;
        this.name=name;
        this.price=price;
    }
    public Management(int id, String desc, String local){
        this.id=id;
        this.desc=desc;
        this.local=local;
    }

    public Management(int id, String name, String author, String local, double price, String desc) {
        this.id = id;
        this.name = name;
        this.author = author;
        this.local = local;
        this.price = price;
        this.desc = desc;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    @Override
    public String toString() {
        return "Management{" + "id=" + id + ", name=" + name + ", author=" + author + ", local=" + local + ", price=" + price + ", desc=" + desc + '}';
    }
    

    public void input(){
        Scanner sc=new Scanner(System.in);
        System.out.println("Nhap id: ");
        this.id=sc.nextInt();
        sc.nextLine();
        System.out.println("Nhap ten sach");
        this.name=sc.nextLine();
        System.out.println("Nhap ten tac gia");
        this.author=sc.nextLine();
        System.out.println("Nhap vi tri sach");
        this.local=sc.nextLine();
        System.out.println("Nhap gia sach");
        this.price=sc.nextDouble();
        sc.nextLine();
        System.out.println("Nhap thong tin sach");
        this.desc=sc.nextLine();
    }
    public void output(){
        System.out.println("Ten: "+this.name);
        System.out.println("Tac gia: "+this.author);
        System.out.println("Vi tri: "+this.local);
        System.out.println("Gia: "+this.price);
        System.out.println("Thong tin:"+this.desc);
    }
}

