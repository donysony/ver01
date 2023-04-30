package com.project.ver01.persistence;

import com.project.ver01.config.RootConfig;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.sql.DataSource;
import java.sql.Connection;

import static org.junit.Assert.fail;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {RootConfig.class})
@Log4j
public class DataSourceTests {
@Setter(onMethod_ ={@Autowired})
    private DataSource dataSource;
@Setter(onMethod_ ={@Autowired} )
private SqlSessionFactory sqlSessionFactory;


    @Test
    public void testMybatis() {
        SqlSession session = sqlSessionFactory.openSession();
        Connection con = session.getConnection();
        try(session ; con){
            log.info(session);
            log.info(con);
        }catch (Exception e){
            fail(e.getMessage());
        }
    }


    @Test
    public void testConnection() throws Exception{

        Connection conn = dataSource.getConnection();
        try(conn){
            log.info(conn);
        }catch(Exception e){
            fail(e.getMessage());

        }
    }
}