package minutes.com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import minutes.com.entities.Team;
import minutes.com.services.TeamService;


@Controller
public class AdminController {

	@Autowired
	private TeamService TeamService;
	
	@Autowired
	private PlayerService PlayerService;
	
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
	
	@RequestMapping(value = {"/admin/manageTeam/{id}"}, method = RequestMethod.GET)
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
