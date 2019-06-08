package minutes.com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import minutes.com.entities.Message;
import minutes.com.services.MessageService;

@Controller
public class MessageController {
	@Autowired
	private MessageService messageService;

	@RequestMapping(value = { "/", "/message-list" }, method = RequestMethod.GET)
	public String listMessage(Model model) {
		model.addAttribute("listMessage", messageService.findAll());
		return "message-list";
	}

	@RequestMapping(value = "/message-save", method = RequestMethod.POST)
	public String insertMessage(Model model) {
		model.addAttribute("message", new Message());
		return "message-save";
	}

	@RequestMapping(value = "/message-view/{id}", method = RequestMethod.GET)
	public String viewMessage(@PathVariable int id, Model model) {
		Message message = messageService.findById(id);
		model.addAttribute("message", message);
		return "message-view";
	}

	@RequestMapping(value = "/message-update/{id}", method = RequestMethod.PUT)
	public String updateMessage(@PathVariable int id, Model model) {
		Message message = messageService.findById(id);
		model.addAttribute("message", message);
		return "message-update";
	}

	@RequestMapping(value = "/saveMessage", method = RequestMethod.POST)
	public String doSaveMessage(@ModelAttribute("Message") Message message, Model model) {
		messageService.save(message);
		return "redirect:contactus";
	}

	@RequestMapping(value = "/updateMessage", method = RequestMethod.PUT)
	public String doUpdateMessage(@ModelAttribute("Message") Message message, Model model) {
		messageService.update(message);
		model.addAttribute("listMessage", messageService.findAll());
		return "message-list";
	}

	@RequestMapping(value = "/messageDelete/{id}", method = RequestMethod.DELETE)
	public String doDeleteMessage(@PathVariable int id, Model model) {
		messageService.delete(id);
		model.addAttribute("listMessage", messageService.findAll());
		return "message-list";
	}
}
