/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rdy;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author user
 */

@Controller
@RequestMapping(value="/Info")
public class Samting {
    
    @RequestMapping()
    public String info() {
    
        return "Info";
    }
}
