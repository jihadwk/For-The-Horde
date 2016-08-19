package com.bw.active;

import org.apache.log4j.xml.DOMConfigurator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.commonSocket.net.AppContext;


/**
 * @author dennyzhao
 * 
 */
public class Server {
	/**
	 * 
	 */
	public Server() {
		// 加载日志配置文件
		DOMConfigurator.configure("resources/config/log4j.xml");
		//加载spring的bean配置，获取ApplicationContext
		AppContext appContext = AppContext.getInstance();
		MinaServer mina = (MinaServer) appContext.getBean("minaServer");
		mina.start();
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		new Server();
	}

}
