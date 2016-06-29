package com.mydrive.controller;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;

import com.mydrive.model.LoginModel;

import com.mydrive.services.UserServices;
import com.mydrive.userDao.User;

@Controller
public class MyDriveController {

	@Autowired
	private UserServices userServices;
	@PersistenceContext
	private EntityManager em;

	@RequestMapping(value = { "/index", "/" }, method = RequestMethod.GET)
	public ModelAndView start() {
		System.out.println("i am here in index.html");
		return new ModelAndView("index");
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView home(@ModelAttribute("loginModel") @Valid LoginModel loginModel) {

		ModelAndView mav = new ModelAndView();
		User user = null;

		String email = loginModel.getEmail();
		String password = loginModel.getPassword();
		List<User> users = userServices.find(email);

		if (users.size() == 1) {
			user = users.get(0);
			System.out.println("user name = " + user.getFirstname());
		}

		System.out.println("i am here in home page");
		System.out.println("email  " + email);
		// System.out.println("password " + user.getPassword());

		if (user != null && password.equals(user.getPassword())) {

			mav.addObject("user", user.getFirstname());
			mav.setViewName("home");

		} else {
			System.out.println("Invalid UserName / Password");
			// message.put("error", "Invalid UserName / Password");
			mav.addObject("message", "Invalid UserName / Password");
			mav.setViewName("index");

		}

		return mav;

	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	@Transactional
	public ModelAndView register(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mav = new ModelAndView();
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("registeremail");
		String dobday = request.getParameter("day");
		String dobmonth = request.getParameter("month");
		String dobyear = request.getParameter("year");
		String gender = request.getParameter("gender");
		String password = request.getParameter("registerpassword");

		List<User> users = userServices.find(email);

		if (users.size() == 0) {

			try {
				User user = new User(firstname, lastname, email, dobday + dobmonth + dobyear, gender, password);
				em.persist(user);
			} finally {
				em.close();
			}
			System.out.println("i am here in register controller");
			mav.addObject("message", "registration successful");
			mav.setViewName("index");
		} else {
			System.out.println("Email already registered");
			mav.addObject("message", "Email already registered");
			mav.setViewName("index");
		}

		return mav;

	}
}
