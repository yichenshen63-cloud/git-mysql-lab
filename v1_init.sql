-- v1_init.sql
-- 版本 1：创建数据库与数据表

-- 创建数据库
CREATE DATABASE IF NOT EXISTS lab_db
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_unicode_ci;

USE lab_db;

-- 创建学生表
CREATE TABLE IF NOT EXISTS student (
  id        INT          NOT NULL AUTO_INCREMENT COMMENT '学生ID',
  name      VARCHAR(50)  NOT NULL                COMMENT '姓名',
  gender    CHAR(1)      NOT NULL                COMMENT '性别 M/F',
  age       TINYINT      UNSIGNED                COMMENT '年龄',
  email     VARCHAR(100)                         COMMENT '邮箱',
  create_at DATETIME     NOT NULL DEFAULT NOW()  COMMENT '创建时间',
  PRIMARY KEY (id)
) ENGINE=InnoDB COMMENT='学生信息表';

-- 插入测试数据
INSERT INTO student (name, gender, age, email) VALUES
  ('张三', 'M', 20, 'zhangsan@example.com'),
  ('李四', 'F', 21, 'lisi@example.com'),
  ('王五', 'M', 19, 'wangwu@example.com');

SELECT * FROM student;
