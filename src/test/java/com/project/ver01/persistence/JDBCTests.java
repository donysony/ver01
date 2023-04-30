package com.project.ver01.persistence;

import lombok.extern.log4j.Log4j;
import org.junit.Test;

import java.sql.Connection;
import java.sql.DriverManager;

import static org.junit.Assert.fail;

@Log4j
public class JDBCTests {
    static{
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    @Test
    public void testConnection() throws Exception{
        Connection con =
                DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/ver01?serverTimezone=UTC&characterEncoding=UTF-8",
                        "donysony",
                        "123.dony"
                    );
        try(con;){
        log.info(con);
        }catch(Exception e){
            fail(e.getMessage());
        }
    }
}
