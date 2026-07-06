# Methods in Apex

Methods are reusable blocks of code that perform a specific task. Instead of writing the same code multiple times, you can place it inside a method and call it whenever needed.

Methods are one of the core building blocks of Apex and help make code modular, reusable, readable, and easier to maintain.

---

# Table of Contents

- What is a Method?
- Why Do We Need Methods?
- Method Syntax
- Components of a Method
- Void Methods
- Methods with Return Type
- Methods with Parameters
- Methods with Multiple Parameters
- Calling Methods
- Real-World Salesforce Examples

---

# What is a Method?

A **method** is a named block of code that performs a specific task. It can accept input values (parameters), execute logic, and optionally return a value.

Think of a method as a reusable function. Once written, it can be called multiple times from different places in your code.

---

# Why Do We Need Methods?

Methods help us:

- Avoid writing duplicate code.
- Improve code readability.
- Make code reusable.
- Break large programs into smaller tasks.
- Simplify maintenance.
- Improve testing.

Without methods, the same logic would need to be copied and pasted throughout the application.

---

# Method Syntax

```apex
accessModifier static returnType methodName(parameters){

    // Method Body

}
```

### Example

```apex
public static void displayMessage(){

    System.debug('Welcome to Apex');

}
```

---

# Components of a Method

Every method consists of the following parts:

### 1. Access Modifier

Controls where the method can be accessed.

Examples:

- `public`
- `private`
- `protected`
- `global`

> Access modifiers are covered in detail in **02-OOP/AccessModifiers.md**.

---

### 2. Static Keyword

Indicates whether the method belongs to the class instead of an object.

```apex
public static void display(){

}
```

> Static methods are covered in detail in **02-OOP/Static.md**.

---

### 3. Return Type

Specifies the type of value returned by the method.

Examples:

```apex
void

Integer

String

Boolean

Account
```

---

### 4. Method Name

The identifier used to call the method.

Example

```apex
calculateTotal()
```

Use meaningful names that describe what the method does.

---

### 5. Parameters

Input values passed into the method.

Example

```apex
(Integer amount)
```

Parameters are optional.

---

### 6. Method Body

Contains the actual logic executed by the method.

---

# Void Methods

A method with a `void` return type does not return any value.

### Syntax

```apex
public static void methodName(){

}
```

---

### Example

```apex
public class Demo{

    public static void greet(){

        System.debug('Hello Apex');

    }

}
```

Calling the method:

```apex
Demo.greet();
```

**Output**

```
Hello Apex
```

---

# Methods with Return Type

A method can return a value using the `return` keyword.

### Syntax

```apex
public static Integer methodName(){

    return value;

}
```

---

### Example

```apex
public class Calculator{

    public static Integer getNumber(){

        return 100;

    }

}
```

Calling the method:

```apex
Integer number = Calculator.getNumber();

System.debug(number);
```

**Output**

```
100
```

---

### Example 2

```apex
public class Employee{

    public static String companyName(){

        return 'Salesforce';

    }

}
```

---

# Methods with Parameters

Parameters allow data to be passed into a method.

### Syntax

```apex
public static void methodName(DataType parameter){

}
```

---

### Example

```apex
public class Student{

    public static void displayName(String name){

        System.debug(name);

    }

}
```

Calling the method:

```apex
Student.displayName('John');
```

**Output**

```
John
```

---

### Example – Addition

```apex
public class Calculator{

    public static Integer add(Integer a, Integer b){

        return a + b;

    }

}
```

Calling the method:

```apex
Integer total = Calculator.add(10,20);

System.debug(total);
```

**Output**

```
30
```

---

# Methods with Multiple Parameters

A method can accept multiple parameters.

### Example

```apex
public class Employee{

    public static void displayEmployee(

        String name,

        Integer age,

        Decimal salary

    ){

        System.debug(name);

        System.debug(age);

        System.debug(salary);

    }

}
```

Calling the method:

```apex
Employee.displayEmployee(

    'John',

    28,

    75000

);
```

---

# Arguments vs Parameters

These two terms are often confused.

### Parameters

Variables declared in the method definition.

```apex
public static void display(String name){

}
```

`name` is a **parameter**.

---

### Arguments

Actual values passed while calling the method.

```apex
display('John');
```

`'John'` is an **argument**.

---

# Calling Methods

Methods can be called using the class name if they are `static`.

```apex
Calculator.add(10,20);
```

Instance methods require an object.

```apex
Employee emp = new Employee();

emp.displayDetails();
```

---

# Real-World Salesforce Examples

## Calculate Discount

```apex
public class DiscountService{

    public static Decimal calculateDiscount(

        Decimal amount

    ){

        return amount * 0.10;

    }

}
```

---

## Check Opportunity Amount

```apex
public class OpportunityService{

    public static Boolean requiresApproval(

        Decimal amount

    ){

        return amount > 100000;

    }

}
```

---

## Display Account Name

```apex
public class AccountService{

    public static void printAccount(

        Account acc

    ){

        System.debug(acc.Name);

    }

}
```

---

## Get Current Date

```apex
public class Utility{

    public static Date today(){

        return Date.today();

    }

}
```

---

## Format Customer Name

```apex
public class CustomerService{

    public static String fullName(

        String firstName,

        String lastName

    ){

        return firstName + ' ' + lastName;

    }

}
```

---

# Key Takeaways

- Methods group reusable logic into a single block.
- They improve readability and reduce duplicate code.
- A method may or may not return a value.
- Parameters receive input values.
- Arguments are the actual values passed during a method call.
- Static methods are called using the class name.
- Instance methods require an object.

---

**End of Part 1**

**Part 2** will cover:

- Method Overloading
- Static vs Instance Methods
- Recursive Methods
- Pass by Value
- Best Practices
- Common Mistakes
- Interview Questions & Answers
- Practice Questions
- Summary

- # Method Overloading

Method overloading allows multiple methods in the same class to have the **same name** but **different parameter lists**.

The methods must differ in:

- Number of parameters
- Data type of parameters
- Order of parameters

The return type alone **cannot** be used to overload a method.

---

## Example

```apex
public class Calculator {

    public static Integer add(Integer a, Integer b) {

        return a + b;

    }

    public static Decimal add(Decimal a, Decimal b) {

        return a + b;

    }

    public static Integer add(Integer a, Integer b, Integer c) {

        return a + b + c;

    }

}
```

Calling the methods:

```apex
System.debug(Calculator.add(10, 20));

System.debug(Calculator.add(10.5, 20.5));

System.debug(Calculator.add(10, 20, 30));
```

The compiler automatically selects the appropriate method based on the arguments passed.

---

# Static Methods vs Instance Methods

Methods in Apex can be either **static** or **instance** methods.

---

## Static Methods

Static methods belong to the class.

They can be called without creating an object.

### Example

```apex
public class Utility {

    public static void displayMessage() {

        System.debug('Hello Apex');

    }

}
```

Calling the method:

```apex
Utility.displayMessage();
```

---

## Instance Methods

Instance methods belong to an object.

You must create an object before calling them.

### Example

```apex
public class Employee {

    public void displayEmployee() {

        System.debug('Employee Details');

    }

}
```

Calling the method:

```apex
Employee emp = new Employee();

emp.displayEmployee();
```

---

## Static vs Instance Methods

| Static Method | Instance Method |
|---------------|-----------------|
| Belongs to the class | Belongs to an object |
| No object required | Object required |
| Called using class name | Called using object reference |
| Cannot directly access instance variables | Can access both instance and static members |

---

# Recursive Methods

A recursive method is a method that calls itself until a stopping condition is reached.

Recursion is useful for problems that can be divided into smaller versions of the same problem.

---

## Example – Factorial

```apex
public class MathUtility {

    public static Integer factorial(Integer number) {

        if(number == 1) {

            return 1;

        }

        return number * factorial(number - 1);

    }

}
```

Calling the method:

```apex
System.debug(MathUtility.factorial(5));
```

**Output**

```
120
```

---

## Important Note

Every recursive method **must have a base condition**.

Without a stopping condition, recursion continues indefinitely and eventually results in a runtime exception.

---

# Pass by Value

Apex passes arguments **by value**.

This means a copy of the variable reference is passed to the method.

For primitive data types, changing the parameter inside the method does not affect the original variable.

### Example

```apex
public class Demo {

    public static void updateValue(Integer number) {

        number = 100;

    }

}
```

Calling the method:

```apex
Integer value = 10;

Demo.updateValue(value);

System.debug(value);
```

**Output**

```
10
```

The original variable remains unchanged.

---

# Returning Objects

Methods can return objects.

### Example

```apex
public class AccountService {

    public static Account createAccount() {

        Account acc = new Account();

        acc.Name = 'Universal Containers';

        return acc;

    }

}
```

Calling the method:

```apex
Account accountRecord = AccountService.createAccount();

System.debug(accountRecord.Name);
```

---

# Best Practices

- Give methods meaningful names.
- Keep methods short and focused on one responsibility.
- Avoid duplicate code by creating reusable methods.
- Use parameters instead of hardcoded values.
- Return values when appropriate instead of printing them.
- Use `static` methods for utility functionality.
- Avoid deeply nested logic inside methods.
- Add comments only when the logic is not self-explanatory.

---

# Common Mistakes

## 1. Very Large Methods

❌ Avoid writing methods that perform many unrelated tasks.

Instead, split the logic into smaller reusable methods.

---

## 2. Poor Method Names

❌

```apex
doWork()
```

✔

```apex
calculateDiscount()
```

Meaningful names improve readability.

---

## 3. Hardcoding Values

❌

```apex
return amount * 0.15;
```

Prefer passing values as parameters when appropriate.

---

## 4. Forgetting the Return Statement

If a method has a return type, every execution path must return a value.

❌

```apex
public static Integer getNumber(){

}
```

✔

```apex
public static Integer getNumber(){

    return 10;

}
```

---

## 5. Infinite Recursion

Recursive methods without a stopping condition cause runtime exceptions.

Always define a base case.

---

# Interview Questions & Answers

## 1. What is a method?

**Answer**

A method is a reusable block of code that performs a specific task. It can accept parameters and optionally return a value.

---

## 2. Why do we use methods?

**Answer**

Methods improve code reusability, readability, maintainability, and testing by avoiding duplicate logic.

---

## 3. What is the difference between a method and a function?

**Answer**

In Apex, the terms are often used interchangeably. Officially, Apex uses the term **method** because methods are defined inside classes.

---

## 4. What is the difference between parameters and arguments?

**Answer**

- Parameters are variables declared in the method definition.
- Arguments are the actual values passed when calling the method.

Example:

```apex
public static void greet(String name) {

}
```

`name` is the parameter.

```apex
greet('John');
```

`'John'` is the argument.

---

## 5. What is a void method?

**Answer**

A void method performs an action but does not return a value.

---

## 6. What is a return type?

**Answer**

The return type specifies the type of value returned by the method.

Example:

```apex
public static Integer getAge() {

    return 25;

}
```

---

## 7. What is method overloading?

**Answer**

Method overloading allows multiple methods with the same name but different parameter lists within the same class.

---

## 8. Can methods be overloaded using only different return types?

**Answer**

No.

Changing only the return type does not constitute method overloading. The parameter list must be different.

---

## 9. What is the difference between a static method and an instance method?

**Answer**

- Static methods belong to the class and are called using the class name.
- Instance methods belong to an object and require object creation before invocation.

---

## 10. What is recursion?

**Answer**

Recursion is a technique in which a method calls itself until a stopping condition is met.

---

## 11. Why is a base condition important in recursion?

**Answer**

Without a base condition, recursion never stops and eventually results in a runtime exception due to excessive stack depth.

---

## 12. Can a method return an object?

**Answer**

Yes.

Methods can return primitive values, collections, sObjects, custom objects, or any valid Apex type.

---

## 13. What is pass by value in Apex?

**Answer**

Apex passes arguments by value. For primitives, changes inside the method do not affect the original variable.

---

## 14. Can a method have multiple parameters?

**Answer**

Yes.

Methods can accept any number of parameters, separated by commas.

---

## 15. What are the characteristics of a good method?

**Answer**

A good method:

- Performs one task.
- Has a meaningful name.
- Is reusable.
- Is easy to understand.
- Avoids duplicate code.
- Has an appropriate return type.

---

# Practice Questions

## Basic

1. Create a method to print your name.
2. Create a method that returns today's date.
3. Create a method that adds two numbers.
4. Create a method that returns the square of a number.
5. Create a method that checks whether a number is even.

---

## Intermediate

6. Create overloaded methods to calculate the area of a square and a rectangle.
7. Write a recursive method to calculate a factorial.
8. Create a method that accepts an Account and prints its Name.
9. Create a method that returns a list of Account names.
10. Write a utility method that formats a customer's full name.

---

## Salesforce Scenarios

11. Create a method to determine whether an Opportunity requires manager approval based on the amount.
12. Create a method that updates the status of all Cases in a list.
13. Create a method that returns an Account based on its Id.
14. Create a reusable method to calculate a discount for an Opportunity.
15. Create a utility class with static methods for common date operations.

---

# Key Takeaways

- Methods are reusable blocks of code that perform specific tasks.
- A method can return a value or use `void`.
- Parameters receive input; arguments supply values.
- Method overloading improves flexibility.
- Static methods belong to the class; instance methods belong to objects.
- Recursive methods must always have a base condition.
- Well-designed methods improve readability, maintainability, and reusability.

---

# Summary

Methods are a fundamental feature of Apex that promote code reuse and modular design. By understanding method declarations, parameters, return types, overloading, recursion, and the difference between static and instance methods, developers can write cleaner and more maintainable code. Mastering methods provides the foundation for advanced topics such as classes, triggers, asynchronous Apex, and design patterns.
