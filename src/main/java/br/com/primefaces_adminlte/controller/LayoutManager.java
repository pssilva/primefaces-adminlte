package br.com.primefaces_adminlte.controller;

import javax.ejb.Stateless;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

@ManagedBean(name="layoutManager")
@SessionScoped
@Stateless
public class LayoutManager {

	public LayoutManager(){
		System.out.println("LayoutManager :: Contructor");
	}
	
	public String commandButton1_action() {
		
		System.out.println("LayoutManager :: commandButton1_action()");
		return new  StringBuilder("LayoutManager :: commandButton1_action()").toString();
		
	}
}
