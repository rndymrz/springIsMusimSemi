/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rdy.controller;

import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author user
 */
@Controller
@RequestMapping("/register")
public class RegistrationController {
    
    @RequestMapping() 
    public String registerForm(Model model) {
        RegistrationBean registerBean = new RegistrationBean();
        //registerBean.setLastName("Smith");
        model.addAttribute("registerBean", registerBean);
        return "form";
    }
    
    @RequestMapping(value="/save") 
    public String saveRegistration(@Valid @ModelAttribute("registerBean") RegistrationBean registerBean, 
            BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "form";
        }
        
        model.addAttribute("data", registerBean);
        return "successregistration";
    }
    
    @RequestMapping(value="/cancel") 
    public String cancelRegistration(Model model) {
        return "cancel";
    }
    
}
