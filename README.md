# Task5-SQL-Internship

## 🗂️ RBAC in MySQL

# 🎯 Objective

Implement Role-Based Access Control (RBAC) in MySQL 8.0+ with three roles:

Admin → Full access

Editor → Read + Write (no delete)

Viewer → Read-only


#  Roles & Privileges
Role	Privileges
Admin	All (DDL + DML)
Editor	SELECT, INSERT, UPDATE (❌ no DELETE)
Viewer	SELECT only

# 📸 Demo

Viewer → can SELECT only

Editor → can SELECT, INSERT, UPDATE

Admin → full database control
