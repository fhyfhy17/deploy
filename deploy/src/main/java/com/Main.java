package com;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Main {
    static Logger logger = LoggerFactory.getLogger(Main.class);
	public static void main(String[] args) {
	    while(true) {
	        try {
	            logger.info("日了狗了");
                Thread.sleep(2000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
	    }
	
	}
}
