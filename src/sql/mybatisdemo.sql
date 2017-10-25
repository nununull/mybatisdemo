#建数据库、建表语句
DROP DATABASE IF EXISTS `mybatisdemo`;
CREATE DATABASE IF NOT EXISTS `mybatisdemo`
  DEFAULT CHARACTER SET `utf8`;
USE `mybatisdemo`;
DROP TABLE IF EXISTS `t_teacher`;
CREATE TABLE IF NOT EXISTS `t_teacher` (
  id           INT AUTO_INCREMENT NOT NULL,
  teacher_name VARCHAR(100)       NOT NULL,
  PRIMARY KEY (id)
)
  ENGINE = innodb
  DEFAULT CHARSET utf8;
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE IF NOT EXISTS `t_student` (
  id           INT AUTO_INCREMENT NOT NULL,
  student_name VARCHAR(100)       NOT NULL,
  teacher_id   INT                NOT NULL,
  PRIMARY KEY (id)
)
  ENGINE = innodb
  DEFAULT CHARSET utf8;
INSERT INTO t_teacher (teacher_name)
VALUES
  ('张老师');
INSERT INTO t_student (student_name, teacher_id)
VALUES
  ('小明', 1),
  ('小红', 1),
  ('小花', 1);