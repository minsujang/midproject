package restaurant_service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RestaurantDao;
import model.Restaurant;
import service.CommandProcess;

public class Update implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		RestaurantDao rd = RestaurantDao.getInstance();
		Restaurant rs = new Restaurant();

		String rname = request.getParameter("rname");
		String rtel = request.getParameter("rtel");
		String kind = request.getParameter("kind");
		String r_info = request.getParameter("r_info");
		int floor = Integer.parseInt(request.getParameter("floor"));
		String loc = request.getParameter("loc");
		String img = request.getParameter("img");

		rs.setRname(rname);
		rs.setRtel(rtel);
		rs.setKind(kind);
		rs.setR_info(r_info);
		rs.setFloor(floor);
		rs.setLoc(loc);
		rs.setImg(img);

		int result = rd.update(rs);

		request.setAttribute("result", result);

		return "update";
	}

}
