-- v2_alter.sql
-- 版本 2：修改数据表结构

USE lab_db;

-- 新增手机号字段
ALTER TABLE student
  ADD COLUMN phone VARCHAR(20) COMMENT '手机号' AFTER email;

-- 新增班级字段
ALTER TABLE student
  ADD COLUMN class_name VARCHAR(50) COMMENT '班级' AFTER phone;

-- 更新已有数据
UPDATE student SET phone = '13800000001', class_name = '计算机1班' WHERE name = '张三';
UPDATE student SET phone = '13800000002', class_name = '计算机1班' WHERE name = '李四';
UPDATE student SET phone = '13800000003', class_name = '计算机2班' WHERE name = '王五';

-- 验证结果
SELECT * FROM student;
