package com.sist.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.dao.BPDAO;
import com.sist.vo.BPVO;

public class TourAction implements SistAction {
	public BPDAO dao;
	public TourAction() {
		dao = new BPDAO();
	}
	@Override
	public String proRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		int pageNUM =1;
		if(request.getParameter("pageNUM")!=null) {
			pageNUM=Integer.parseInt(request.getParameter("pageNUM"));
		}
		System.out.println(pageNUM);

		ArrayList<BPVO> tourList=dao.listTour(pageNUM);
		request.setAttribute("totalPage", BPDAO.totalPage2);
		request.setAttribute("tourList", tourList);
		return "tour.jsp";
	}

}
