# Variables in Apex

Variables are one of the most fundamental concepts in Apex. They are used to store data that can be accessed, modified, and reused throughout the execution of a program.

Without variables, every value would have to be hardcoded, making programs difficult to maintain and reuse.

---

# Table of Contents

- What is a Variable?
- Why Do We Need Variables?
- Variable Declaration
- Variable Initialization
- Variable Assignment
- Declaration vs Initialization
- Types of Variables
- Variable Scope
- Variable Naming Rules
- Naming Conventions
- Examples
- Best Practices
- Common Mistakes
- Interview Questions & Answers
- Practice Questions
- Summary

---

# What is a Variable?

A **variable** is a named memory location that stores a value. The value can change during program execution unless the variable is declared as `final`.

Every variable has:

- A name
- A data type
- A value

**Syntax**

```apex
DataType variableName = value;
```

**Example**

```apex
Integer age = 25;
String company = 'Salesforce';
Boolean isActive = true;
```

> **Note:** The actual data types are covered in **DataTypes.md**.

---

# Why Do We Need Variables?

Variables allow us to:

- Store information.
- Reuse values.
- Make code dynamic.
- Improve readability.
- Avoid hardcoding values.
- Pass data between methods.
- Perform calculations.

**Without Variables**

```apex
System.debug(25);
```

**With Variables**

```apex
Integer age = 25;

System.debug(age);
```

Using variables makes the code easier to understand and maintain.

---

# Variable Declaration

Declaration means creating a variable by specifying its data type and name.

**Syntax**

```apex
DataType variableName;
```

**Example**

```apex
Integer age;

String name;

Boolean isActive;
```

---

# Variable Initialization

Initialization means assigning the first value to a variable.

```apex
Integer age = 25;

String name = 'John';
```

---

# Variable Assignment

Variables can be updated after initialization.

```apex
Integer score = 50;

score = 75;

System.debug(score);
```

**Output**

```
75
```

---

# Declaration vs Initialization

### Declaration

```apex
Integer age;
```

Creates the variable.

### Initialization

```apex
age = 25;
```

Assigns its first value.

### Declaration + Initialization

```apex
Integer age = 25;
```

Does both in a single statement.

---

# Types of Variables

## 1. Local Variables

Declared inside a method, loop, or block.

```apex
public class Demo {

    public static void showMessage() {

        String message = 'Hello';

        System.debug(message);

    }

}
```

**Characteristics**

- Accessible only inside the block.
- Exists only while the block executes.

---

## 2. Instance Variables

Declared inside a class but outside methods.

Each object gets its own copy.

```apex
public class Employee {

    String name;

}
```

```apex
Employee emp1 = new Employee();
Employee emp2 = new Employee();

emp1.name = 'John';
emp2.name = 'Alex';
```

---

## 3. Static Variables

Belong to the class instead of an object.

```apex
public class Company {

    public static Integer employeeCount = 0;

}
```

Access using the class name.

```apex
Company.employeeCount++;
```

Static variables are commonly used for counters and trigger recursion prevention.

---

## 4. Final Variables

A `final` variable can be assigned only once.

```apex
final Integer MAX_LIMIT = 100;
```

Attempting to modify it results in a compilation error.

---

# Variable Scope

Scope defines where a variable can be accessed.

| Variable Type | Scope |
|--------------|-------|
| Local | Inside the method or block |
| Instance | Throughout the object |
| Static | Throughout the class |

Keeping the scope as small as possible makes code easier to maintain.

---

# Variable Naming Rules

A variable:

- Can contain letters.
- Can contain numbers.
- Can contain underscores (`_`).
- Cannot start with a number.
- Cannot contain spaces.
- Cannot use Apex reserved keywords.

### Valid

```text
employeeName

totalAmount

isActive

student1
```

### Invalid

```text
1name

employee name

class

if
```

---

# Naming Conventions

Follow these conventions while writing Apex code.

- Use **camelCase** for variable names.
- Use meaningful names.
- Boolean variables should read naturally.

**Good**

```apex
Integer employeeCount;

String accountName;

Boolean isActive;
```

**Bad**

```apex
Integer a;

String temp;

Boolean b;
```

---

# Examples

## Example 1

```apex
String company = 'Salesforce';

System.debug(company);
```

---

## Example 2

```apex
Integer marks = 80;

marks = 95;

System.debug(marks);
```

---

## Example 3

```apex
Boolean isLoggedIn = true;

System.debug(isLoggedIn);
```

---

## Example 4

```apex
public class Student {

    String name;

}
```

---

## Example 5

```apex
public class Counter {

    public static Integer count = 0;

}
```

---

# Best Practices

- Use meaningful variable names.
- Keep variable scope as small as possible.
- Initialize variables when declaring them whenever possible.
- Use `final` for values that should not change.
- Follow camelCase naming conventions.
- Avoid unnecessary variables.
- Use descriptive Boolean names like `isActive`, `hasPermission`, and `canEdit`.

---

# Common Mistakes

- Using vague variable names like `a` or `x`.
- Declaring variables that are never used.
- Keeping variables in a larger scope than necessary.
- Modifying values that should be constant.
- Using reserved keywords as variable names.

---

# Interview Questions & Answers

### 1. What is a variable?

**Answer:**

A variable is a named memory location used to store data that can be accessed and modified during program execution.

---

### 2. Why do we use variables?

**Answer:**

Variables allow us to store data, reuse values, improve readability, avoid hardcoding, and make programs dynamic.

---

### 3. What is variable declaration?

**Answer:**

Variable declaration means creating a variable by specifying its data type and name.

```apex
Integer age;
```

---

### 4. What is variable initialization?

**Answer:**

Initialization is assigning the first value to a variable.

```apex
Integer age = 25;
```

---

### 5. What is the difference between declaration and initialization?

**Answer:**

- **Declaration** creates the variable.
- **Initialization** assigns its first value.

---

### 6. What are local variables?

**Answer:**

Local variables are declared inside methods or blocks and can only be accessed within that block.

---

### 7. What are instance variables?

**Answer:**

Instance variables belong to an object. Every object has its own copy of these variables.

---

### 8. What are static variables?

**Answer:**

Static variables belong to the class instead of individual objects. A single copy is shared during the transaction and is accessed using the class name.

---

### 9. What is a final variable?

**Answer:**

A final variable can only be assigned once. Its value cannot be changed after initialization.

---

### 10. What is variable scope?

**Answer:**

Variable scope defines where a variable can be accessed. Local variables are accessible only within their block, instance variables through an object, and static variables throughout the class.

---

# Practice Questions

1. Declare variables to store a student's name, age, and percentage.
2. Create a class with two instance variables.
3. Create a class with one static variable.
4. Declare a final variable and try changing its value. What happens?
5. Write a method that declares a local variable and prints it.
6. Rename poorly named variables (`a`, `b`, `temp`) to meaningful names.
7. Create a class that tracks the number of employees using a static variable.

---

# Summary

Variables are used to store and manage data in Apex applications. Understanding how to declare, initialize, assign, and scope variables is essential because they are used in every Apex program. A good understanding of variables forms the foundation for learning data types, operators, control statements, classes, collections, SOQL, DML, and other advanced Apex concepts.
