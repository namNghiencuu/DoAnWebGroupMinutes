package minutes.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ClientController {
	@RequestMapping(value = "/")
	public String home() {
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
		return "contactus";
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
