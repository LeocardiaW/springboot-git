package com.hbue.pojo;

public class Movie {
    private Integer movieid;

    private String name;

    private String time;

    private String actor;

    private Double price;

    @Override
    public String toString() {
        return "Movie{" +
                "movieid=" + movieid +
                ", name='" + name + '\'' +
                ", time='" + time + '\'' +
                ", actor='" + actor + '\'' +
                ", price=" + price +
                '}';
    }

    public Integer getMovieid() {
        return movieid;
    }

    public void setMovieid(Integer movieid) {
        this.movieid = movieid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time == null ? null : time.trim();
    }

    public String getActor() {
        return actor;
    }

    public void setActor(String actor) {
        this.actor = actor == null ? null : actor.trim();
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }
}