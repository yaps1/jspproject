package com.sist.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.dao.NoticeDAO;
import com.sist.vo.NoticeVO;

public class DetailMemberNoticeAction implements SistAction {
	public NoticeDAO dao;
	public DetailMemberNoticeAction() {
		dao = new NoticeDAO();
	}
	@Override
	public String proRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int notice_no = Integer.parseInt(request.getParameter("notice_no"));
		NoticeVO n = dao.getNotice(notice_no);
		request.setAttribute("n",n);
		String content = n.getNotice_content();
		//content = content.replace("\r\n", "<br>");
		request.setAttribute("content", content);
		//System.out.println(content);
		return "detailmemberNotice.jsp";
	}

}
