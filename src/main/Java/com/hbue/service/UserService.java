package com.hbue.service;

import com.hbue.pojo.Movie;
import com.hbue.pojo.User;

import java.util.List;

public interface UserService {
    //查询用户
    public User login(User user);

    //查询所有电影
    public List<Movie> selectAllMovies();

    //查看电影详情
    public Movie selectMovieById(int id);
}
