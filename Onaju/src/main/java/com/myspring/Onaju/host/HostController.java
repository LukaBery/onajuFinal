/*
 * package com.myspring.Onaju.host;
 * 
 * import javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse; import
 * javax.servlet.http.HttpSession;
 * 
 * import org.springframework.context.annotation.EnableAspectJAutoProxy; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.web.bind.annotation.RequestMapping; import
 * org.springframework.web.bind.annotation.RequestMethod; import
 * org.springframework.web.servlet.ModelAndView;
 * 
 * import com.myspring.Onaju.common.base.BaseController;
 * 
 * @Controller("hostController")
 * 
 * @EnableAspectJAutoProxy public class HostController {
 * 
 * 
 * 
 * @RequestMapping(value= "/host/main.do"
 * ,method={RequestMethod.POST,RequestMethod.GET}) public ModelAndView
 * main(HttpServletRequest request, HttpServletResponse response) throws
 * Exception{ HttpSession session; ModelAndView mav=new ModelAndView(); String
 * viewName=(String)request.getAttribute("viewName"); String isLogOn =
 * request.getParameter("isLogOn"); System.out.println("isLogon��"+isLogOn);
 * mav.addObject("isLogOn", isLogOn); mav.setViewName(viewName);
 * 
 * return mav; }
 * 
 * @RequestMapping(value= "/host/reservation/reList.do"
 * ,method={RequestMethod.POST,RequestMethod.GET}) public ModelAndView
 * reList(HttpServletRequest request, HttpServletResponse response) throws
 * Exception{ HttpSession session; ModelAndView mav=new ModelAndView(); String
 * viewName=(String)request.getAttribute("viewName"); String isLogOn =
 * request.getParameter("isLogOn"); System.out.println("isLogOn"+isLogOn);
 * mav.addObject("isLogOn", isLogOn); mav.setViewName(viewName);
 * 
 * return mav; }
 * 
 * @RequestMapping(value= "/host/reservation/reSearchDetail.do"
 * ,method={RequestMethod.POST,RequestMethod.GET}) public ModelAndView
 * reSearch(HttpServletRequest request, HttpServletResponse response) throws
 * Exception{ HttpSession session; ModelAndView mav=new ModelAndView(); String
 * viewName=(String)request.getAttribute("viewName"); String isLogOn =
 * request.getParameter("isLogOn"); System.out.println("isLogOn"+isLogOn);
 * mav.addObject("isLogOn", isLogOn); mav.setViewName(viewName);
 * 
 * return mav; }
 * 
 * @RequestMapping(value= "/host/reservation/reDelete.do"
 * ,method={RequestMethod.POST,RequestMethod.GET}) public ModelAndView
 * reDelete(HttpServletRequest request, HttpServletResponse response) throws
 * Exception{ HttpSession session; ModelAndView mav=new ModelAndView(); String
 * viewName=(String)request.getAttribute("viewName"); String isLogOn =
 * request.getParameter("isLogOn"); System.out.println("isLogOn"+isLogOn);
 * mav.addObject("isLogOn", isLogOn); mav.setViewName(viewName);
 * 
 * return mav; }
 * 
 * @RequestMapping(value= "/host/reservation/reUpdate.do"
 * ,method={RequestMethod.POST,RequestMethod.GET}) public ModelAndView
 * reUpdate(HttpServletRequest request, HttpServletResponse response) throws
 * Exception{ HttpSession session; ModelAndView mav=new ModelAndView(); String
 * viewName=(String)request.getAttribute("viewName"); String isLogOn =
 * request.getParameter("isLogOn"); System.out.println("isLogOn"+isLogOn);
 * mav.addObject("isLogOn", isLogOn); mav.setViewName(viewName);
 * 
 * return mav; }
 * 
 * @RequestMapping(value= "/host/money/mList.do"
 * ,method={RequestMethod.POST,RequestMethod.GET}) public ModelAndView
 * mList(HttpServletRequest request, HttpServletResponse response) throws
 * Exception{ HttpSession session; ModelAndView mav=new ModelAndView(); String
 * viewName=(String)request.getAttribute("viewName"); String isLogOn =
 * request.getParameter("isLogOn"); System.out.println("isLogOn"+isLogOn);
 * mav.addObject("isLogOn", isLogOn); mav.setViewName(viewName);
 * 
 * return mav; }
 * 
 * @RequestMapping(value= "/host/money/mCalculate.do"
 * ,method={RequestMethod.POST,RequestMethod.GET}) public ModelAndView
 * mCalculate(HttpServletRequest request, HttpServletResponse response) throws
 * Exception{ HttpSession session; ModelAndView mav=new ModelAndView(); String
 * viewName=(String)request.getAttribute("viewName"); String isLogOn =
 * request.getParameter("isLogOn"); System.out.println("isLogOn"+isLogOn);
 * mav.addObject("isLogOn", isLogOn); mav.setViewName(viewName);
 * 
 * return mav; }
 * 
 * @RequestMapping(value= "/host/management/reviewList.do"
 * ,method={RequestMethod.POST,RequestMethod.GET}) public ModelAndView
 * reviewList(HttpServletRequest request, HttpServletResponse response) throws
 * Exception{ HttpSession session; ModelAndView mav=new ModelAndView(); String
 * viewName=(String)request.getAttribute("viewName"); String isLogOn =
 * request.getParameter("isLogOn"); System.out.println("isLogOn"+isLogOn);
 * mav.addObject("isLogOn", isLogOn); mav.setViewName(viewName);
 * 
 * return mav; }
 * 
 * @RequestMapping(value= "/host/management/reviewEX.do"
 * ,method={RequestMethod.POST,RequestMethod.GET}) public ModelAndView
 * reviewEX(HttpServletRequest request, HttpServletResponse response) throws
 * Exception{ HttpSession session; ModelAndView mav=new ModelAndView(); String
 * viewName=(String)request.getAttribute("viewName"); String isLogOn =
 * request.getParameter("isLogOn"); System.out.println("isLogOn"+isLogOn);
 * mav.addObject("isLogOn", isLogOn); mav.setViewName(viewName);
 * 
 * return mav; }
 * 
 * 
 * @RequestMapping(value= "/host/goods/gList.do"
 * ,method={RequestMethod.POST,RequestMethod.GET}) public ModelAndView
 * gList(HttpServletRequest request, HttpServletResponse response) throws
 * Exception{ HttpSession session; ModelAndView mav=new ModelAndView(); String
 * viewName=(String)request.getAttribute("viewName"); String isLogOn =
 * request.getParameter("isLogOn"); System.out.println("isLogOn"+isLogOn);
 * mav.addObject("isLogOn", isLogOn); mav.setViewName(viewName);
 * 
 * return mav; }
 * 
 * @RequestMapping(value= "/host/goods/gInsert.do"
 * ,method={RequestMethod.POST,RequestMethod.GET}) public ModelAndView
 * gInsert(HttpServletRequest request, HttpServletResponse response) throws
 * Exception{ HttpSession session; ModelAndView mav=new ModelAndView(); String
 * viewName=(String)request.getAttribute("viewName"); String isLogOn =
 * request.getParameter("isLogOn"); System.out.println("isLogOn"+isLogOn);
 * mav.addObject("isLogOn", isLogOn); mav.setViewName(viewName);
 * 
 * return mav; }
 * 
 * @RequestMapping(value= "/host/goods/gUpdate.do"
 * ,method={RequestMethod.POST,RequestMethod.GET}) public ModelAndView
 * gUpdateChoice(HttpServletRequest request, HttpServletResponse response)
 * throws Exception{ HttpSession session; ModelAndView mav=new ModelAndView();
 * String viewName=(String)request.getAttribute("viewName"); String isLogOn =
 * request.getParameter("isLogOn"); System.out.println("isLogOn"+isLogOn);
 * mav.addObject("isLogOn", isLogOn); mav.setViewName(viewName);
 * 
 * return mav; }
 * 
 * @RequestMapping(value= "/host/goods/gDelete.do"
 * ,method={RequestMethod.POST,RequestMethod.GET}) public ModelAndView
 * gDelete(HttpServletRequest request, HttpServletResponse response) throws
 * Exception{ HttpSession session; ModelAndView mav=new ModelAndView(); String
 * viewName=(String)request.getAttribute("viewName"); String isLogOn =
 * request.getParameter("isLogOn"); System.out.println("isLogon��"+isLogOn);
 * mav.addObject("isLogOn", isLogOn); mav.setViewName(viewName);
 * 
 * return mav; }
 * 
 * @RequestMapping(value= "/host/goods/gON_OFF.do"
 * ,method={RequestMethod.POST,RequestMethod.GET}) public ModelAndView
 * gON_OFF(HttpServletRequest request, HttpServletResponse response) throws
 * Exception{ HttpSession session; ModelAndView mav=new ModelAndView(); String
 * viewName=(String)request.getAttribute("viewName"); String isLogOn =
 * request.getParameter("isLogOn"); System.out.println("isLogOn"+isLogOn);
 * mav.addObject("isLogOn", isLogOn); mav.setViewName(viewName);
 * 
 * return mav; }
 * 
 * @RequestMapping(value= "/host/center/noticeBoard.do"
 * ,method={RequestMethod.POST,RequestMethod.GET}) public ModelAndView
 * noticeBoard(HttpServletRequest request, HttpServletResponse response) throws
 * Exception{ HttpSession session; ModelAndView mav=new ModelAndView(); String
 * viewName=(String)request.getAttribute("viewName"); String isLogOn =
 * request.getParameter("isLogOn"); System.out.println("isLogOn"+isLogOn);
 * mav.addObject("isLogOn", isLogOn); mav.setViewName(viewName);
 * 
 * return mav; }
 * 
 * @RequestMapping(value= "/host/center/noticeDetail.do"
 * ,method={RequestMethod.POST,RequestMethod.GET}) public ModelAndView
 * noticeDetail(HttpServletRequest request, HttpServletResponse response) throws
 * Exception{ HttpSession session; ModelAndView mav=new ModelAndView(); String
 * viewName=(String)request.getAttribute("viewName"); String isLogOn =
 * request.getParameter("isLogOn"); System.out.println("isLogon��"+isLogOn);
 * mav.addObject("isLogOn", isLogOn); mav.setViewName(viewName);
 * 
 * return mav; }
 * 
 * 
 * @RequestMapping(value= "/host/center/qnaList.do"
 * ,method={RequestMethod.POST,RequestMethod.GET}) public ModelAndView
 * qnaList(HttpServletRequest request, HttpServletResponse response) throws
 * Exception{ HttpSession session; ModelAndView mav=new ModelAndView(); String
 * viewName=(String)request.getAttribute("viewName"); String isLogOn =
 * request.getParameter("isLogOn"); System.out.println("isLogon��"+isLogOn);
 * mav.addObject("isLogOn", isLogOn); mav.setViewName(viewName);
 * 
 * return mav; }
 * 
 * 
 * @RequestMapping(value= "/host/center/qnaForm.do"
 * ,method={RequestMethod.POST,RequestMethod.GET}) public ModelAndView
 * qnaForm(HttpServletRequest request, HttpServletResponse response) throws
 * Exception{ HttpSession session; ModelAndView mav=new ModelAndView(); String
 * viewName=(String)request.getAttribute("viewName"); String isLogOn =
 * request.getParameter("isLogOn"); System.out.println("isLogon��"+isLogOn);
 * mav.addObject("isLogOn", isLogOn); mav.setViewName(viewName);
 * 
 * return mav; }
 * 
 * @RequestMapping(value= "/host/center/qnaDetail.do"
 * ,method={RequestMethod.POST,RequestMethod.GET}) public ModelAndView
 * qnaDetail(HttpServletRequest request, HttpServletResponse response) throws
 * Exception{ HttpSession session; ModelAndView mav=new ModelAndView(); String
 * viewName=(String)request.getAttribute("viewName"); String isLogOn =
 * request.getParameter("isLogOn"); System.out.println("isLogon��"+isLogOn);
 * mav.addObject("isLogOn", isLogOn); mav.setViewName(viewName);
 * 
 * return mav; }
 * 
 * @RequestMapping(value= "/host/center/markRequest.do"
 * ,method={RequestMethod.POST,RequestMethod.GET}) public ModelAndView
 * markRequest(HttpServletRequest request, HttpServletResponse response) throws
 * Exception{ HttpSession session; ModelAndView mav=new ModelAndView(); String
 * viewName=(String)request.getAttribute("viewName"); String isLogOn =
 * request.getParameter("isLogOn"); System.out.println("isLogon��"+isLogOn);
 * mav.addObject("isLogOn", isLogOn); mav.setViewName(viewName);
 * 
 * return mav; }
 * 
 * @RequestMapping(value= "/host/center/dropOut.do"
 * ,method={RequestMethod.POST,RequestMethod.GET}) public ModelAndView
 * dropOut(HttpServletRequest request, HttpServletResponse response) throws
 * Exception{ HttpSession session; ModelAndView mav=new ModelAndView(); String
 * viewName=(String)request.getAttribute("viewName"); String isLogOn =
 * request.getParameter("isLogOn"); System.out.println("isLogon��"+isLogOn);
 * mav.addObject("isLogOn", isLogOn); mav.setViewName(viewName);
 * 
 * return mav; }
 * 
 * @RequestMapping(value= "/host/center/dropOutResult.do"
 * ,method={RequestMethod.POST,RequestMethod.GET}) public ModelAndView
 * dropOutResult(HttpServletRequest request, HttpServletResponse response)
 * throws Exception{ HttpSession session; ModelAndView mav=new ModelAndView();
 * String viewName=(String)request.getAttribute("viewName"); String isLogOn =
 * request.getParameter("isLogOn"); System.out.println("isLogon��"+isLogOn);
 * mav.addObject("isLogOn", isLogOn); mav.setViewName(viewName);
 * 
 * return mav; }
 * 
 * 
 * }
 */