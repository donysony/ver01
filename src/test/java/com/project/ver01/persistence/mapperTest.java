package com.project.ver01.persistence;

import lombok.extern.log4j.Log4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.sql.DataSource;
import java.sql.Connection;

import static org.junit.Assert.fail;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {com.project.ver01.config.RootConfig.class})
@Log4j
public class mapperTest {
    @Autowired
    private DataSource dataSource;
    @Test
    public void testConnection(){
        try(Connection con = dataSource.getConnection()){
            log.info(con);
        }
        catch(Exception e){
            fail(e.getMessage());
        }
    }


}
