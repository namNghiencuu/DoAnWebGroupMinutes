package minutes.com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import minutes.com.entities.Post;
import minutes.com.entities.Team;
import minutes.com.entities.Admin;
import minutes.com.services.TeamService;
import minutes.com.services.PlayerService;
import minutes.com.services.AdminService;

@Controller
public class AdminController {

	@Autowired
	private TeamService TeamService;

	@Autowired
	private PlayerService PlayerService;
	
	@Autowired
	private AdminService AdminService;

	@RequestMapping(value = { "/admin" })
	public String adminhome() {
		return "admindashboard";
	}

	@RequestMapping(value = { "/createUserAccount" }, method= RequestMethod.POST)
	public String createAdmin(@ModelAttribute("Admin") Admin admin, Model model) {
		try {
			AdminService.save(admin);
		} catch(Exception e){
			System.out.println(e);
			model.addAttribute("error", e);
		}
		return "redirect:login";
	}

	@RequestMapping(value = { "/admin/manageArticle" })
	public String manageArticle(Model model) {
		return "manageArticle";
	}

	@RequestMapping("/admin/manageFC")
	public String manageFC(Model model) {
		model.addAttribute("teams", TeamService.findAll());
		return "manageFC";
	}

	@RequestMapping(value = { "/admin/manageTeam/{id}" }, method = RequestMethod.GET)
	public String manageTeam(@PathVariable int id, Model model) {
		Team team = TeamService.findById(id);
		model.addAttribute("team", team);
		model.addAttribute("goalkeeper", PlayerService.findByTeamIdAndPosition(id, "GOALKEEPER"));
		model.addAttribute("midfielder", PlayerService.findByTeamIdAndPosition(id, "MIDFIELDER"));
		model.addAttribute("attacker", PlayerService.findByTeamIdAndPosition(id, "ATTACKER"));
		model.addAttribute("defender", PlayerService.findByTeamIdAndPosition(id, "DEFENDER"));
		return "manageTeam";
	}
}
