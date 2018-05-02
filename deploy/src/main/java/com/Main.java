package com;

public class Main {
	public static void main(String[] args) {
	    while(true) {
	        try {
	            System.out.println("日了狗了");
                Thread.sleep(2000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
	    }
	
	}
}
