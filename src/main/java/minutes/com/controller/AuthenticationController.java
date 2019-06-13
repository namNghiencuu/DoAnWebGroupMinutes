package minutes.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AuthenticationController {
	@RequestMapping(value = { "/login"}, method = RequestMethod.GET)
	public String login(@RequestParam(value = "error", required = false) final String error, final Model model) {
		model.addAttribute("message", error);
		return "signIn";
	}
	
	@RequestMapping(value = { "/login"}, method = RequestMethod.POST)
	public String loginPost(@RequestParam(value = "error", required = false) final String error, final Model model) {
		if (error != null) {
			model.addAttribute("message", "Login Failed!");
		}
		return "signIn";
	}

	@RequestMapping(value = { "/logout" })
	public String logout(final Model model) {
		model.addAttribute("message", "Logged out!");
		return "signIn";
	}
}
