package com.hive.pub.controller;

import com.jfinal.core.Controller;

public class LayoutController extends Controller {
	
	public void north() {
		System.out.println("执行north方法");
		render("/view/layout/north.jsp");
	}

	public void west() {
		System.out.println("执行west方法");
		render("/view/layout/west.jsp");
	}

	public void center() {
		System.out.println("执行center方法");
		render("/view/layout/center.jsp");
	}

	public void south() {
		System.out.println("执行south方法");
		render("/view/layout/south.jsp");
	}
}
