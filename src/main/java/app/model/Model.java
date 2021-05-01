package app.model;

import app.entities.User;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class Model {

    private static final Model instance = new Model();
    private final List<User> list;

    public static Model getInstance(){
        return instance;
    }

    private Model(){
        list = new ArrayList<>();
    }

    public void add(User user){
        list.add(user);
    }

    public List<String> list(){
        return list.stream().map(User::getName).collect(Collectors.toList());
    }
}
