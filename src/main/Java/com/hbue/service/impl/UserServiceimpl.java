package com.hbue.service.impl;

import com.hbue.mapper.MovieMapper;
import com.hbue.mapper.UserMapper;
import com.hbue.pojo.Movie;
import com.hbue.pojo.User;
import com.hbue.pojo.UserExample;
import com.hbue.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceimpl implements UserService {

    @Autowired
    private MovieMapper movieMapper;

    @Autowired
    private UserMapper userMapper;

    //登录
    @Override
    public User login(User user) {
        UserExample example = new UserExample();
        example.createCriteria().andPasswordEqualTo(user.getPassword()).andUsernameEqualTo(user.getUsername());
        List<User> users = userMapper.selectByExample(example);
        System.out.println("登录");
        if(users.size() > 0) {
            user = users.get(0);
            return user;
        }
        return null;
    }

    //查询所有电影
    @Override
    public List<Movie> selectAllMovies() {
        List<Movie> movies = movieMapper.selectByExample(null);
        System.out.println("查询所有电影");
        return movies;
    }

    //查看电影详情
    @Override
    public Movie selectMovieById(int id) {
        Movie movie = movieMapper.selectByPrimaryKey(id);
        return movie;
    }
}
