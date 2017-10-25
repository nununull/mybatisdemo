package cn.nunu.mapper.dao;

import cn.nunu.mapper.entity.Teacher;
import junit.framework.TestCase;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:/spring/spring-dao.xml"})
public class TeacherDaoTest extends TestCase {

    @Autowired
    private TeacherDao teacherDao;
    private static final Logger logger = LoggerFactory.getLogger(TeacherDaoTest.class);

    @Test
    public void testList() throws Exception {
        List<Teacher> list = teacherDao.list();
        logger.info("list={}",list);
    }

}