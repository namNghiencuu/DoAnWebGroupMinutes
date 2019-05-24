package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	@RequestMapping(value = { "/admin" })
	public String adminhome() {
		return "admindashboard";
	}

	@RequestMapping(value = { "/admin/manageArticle" })
	public String manageArticle(Model model) {
		return "manageArticle";
	}

	@RequestMapping("/admin/manageFC")
	public String manageFC(Model model) {
		return "manageFC";
	}
}
