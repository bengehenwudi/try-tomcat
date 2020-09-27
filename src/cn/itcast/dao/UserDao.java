package cn.itcast.dao;

import cn.itcast.User;
import cn.itcast.util.JDBCUtils;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class UserDao {
    private JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());

    public  List<User>  findALL(){
        String sql = "select * from user";
        return template.query(sql,new BeanPropertyRowMapper<User>(User.class));
    }
}
