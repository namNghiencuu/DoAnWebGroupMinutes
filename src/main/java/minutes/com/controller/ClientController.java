package minutes.com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import minutes.com.entities.Post;
import minutes.com.services.PostService;

@Controller
public class ClientController {
	@Autowired
	private PostService PostService;
	
//	@Autowired
//	private MatchService MatchService;
	
	@RequestMapping(value = {"/"}, method = RequestMethod.GET)
	public String home(Model model) {
		model.addAttribute("listPost", PostService.findTopPost(10));
		model.addAttribute("videoPost", PostService.findTopVideoPost(3));
//		model.addAttribute("listMatch", MatchService.findTopMatch(3));
		return "homepage";
	}

	@RequestMapping(value = "/policy")
	public String policy() {
		return "policy";
	}

	@RequestMapping(value = "/careers")
	public String careers() {
		return "careers";
	}

	@RequestMapping(value = "/contactus")
	public String contactus() {
		return "contactUs";
	}

	@RequestMapping(value = "/terms")
	public String terms() {
		return "terms";
	}

	@RequestMapping(value = "/transfer")
	public String transfer() {
		return "transfer";
	}

}
