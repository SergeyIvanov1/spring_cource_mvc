package com.sergey_ivanov.spring.mvc;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
public class MyController {

    @RequestMapping("")
    public String showFirstView(){
        return "first-view";
    }

//    @RequestMapping("/askDetails")
//    public String askEmployeeDetails(){
//        return "ask-emp-details-view";
//    }

//    @RequestMapping("/showDetails")
//    public String showEmpDetails(){
//        return "show-emp-details-view";
//    }
//   параметер передается через <input type="text" name="employeeName"
//    @RequestMapping("/showDetails")
//    public String showEmpDetails(HttpServletRequest request, Model model){
//        String empName = request.getParameter("employeeName");
//        empName = "Mr. " + empName;
//        model.addAttribute("employeeName", empName);
//        return "show-emp-details-view";
//    }
//
//   параметер передается через <input type="text" name="employeeName"
//    @RequestMapping("/showDetails")
//    public String showEmpDetails(@RequestParam("employeeName") String empName, Model model){
//        empName = "Mr. " + empName;
//        model.addAttribute("employeeName", empName);
//        return "show-emp-details-view";
//    }

    @RequestMapping("/askDetails")
    public String askEmployeeDetails(Model model){
//        Employee employee = new Employee();
//        employee.setName("Ivan");
        model.addAttribute("employee", new Employee());
        return "ask-emp-details-view";
    }

    @RequestMapping("/showDetails")
    public String showEmpDetails(@Valid @ModelAttribute("employee") Employee emp,
                                 BindingResult bindingResult){ // bindingResult должен идти сразу после модели, иначе вашлидация будет работать не верно

        if (bindingResult.hasErrors()){ //если валидация не прошла, то на новую страницу не переходить, а остаться на той же странице
            return "ask-emp-details-view";
        } else {
            return "show-emp-details-view";
        }
    }
}
