package com.hbue.controller;

import com.hbue.pojo.Movie;
import com.hbue.pojo.User;
import com.hbue.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/m")
    public String toLogin(){
        return "login";
    }
    //登录
    @RequestMapping("login")
    public String Login(User user){
        System.out.println(user);
        User existUser = userService.login(user);
        if(existUser != null){
            System.out.println("登录成功");
            return "main";
        }else {
            return "login";
        }
    }

    //查询电影
    @RequestMapping("movieList")
    public String selectMovies(Model model){
        List<Movie> movies = userService.selectAllMovies();
        model.addAttribute("movies",movies);
        return "movies";
    }

    //查看电影详情
    @RequestMapping("movieDetail/{id}")
    public String selectMovieByid(@PathVariable("id") int id, Model model){
        Movie movie = userService.selectMovieById(id);
        model.addAttribute("movie",movie);
        return "movie";
    }

    @RequestMapping("hello")
    public String hello(){
        System.out.println("hello springboot");
        return "success";
    }
}
