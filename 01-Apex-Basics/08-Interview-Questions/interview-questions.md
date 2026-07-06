# Apex Basics - Interview Questions & Answers

This document contains commonly asked interview questions related to the **Apex Basics** section. The questions cover Variables, Data Types, Operators, If-Else Statements, Switch Statements, Loops, and Methods.

---

# Variables

## 1. What is a variable?

**Answer**

A variable is a named memory location used to store data. The value stored in a variable can be changed during program execution unless it is declared as `final`.

---

## 2. What is the difference between declaration and initialization?

**Answer**

- **Declaration** creates a variable.
- **Initialization** assigns the first value to that variable.

Example:

```apex
Integer age;      // Declaration

age = 25;         // Initialization
```

---

## 3. What are local variables?

**Answer**

Local variables are declared inside a method or block and can only be accessed within that block.

---

## 4. What are instance variables?

**Answer**

Instance variables belong to an object. Each object has its own copy of these variables.

---

## 5. What are static variables?

**Answer**

Static variables belong to the class rather than an object. They are shared by all objects within the same transaction.

---

# Data Types

## 6. What is a data type?

**Answer**

A data type defines the kind of value a variable can store.

---

## 7. Why is Apex a strongly typed language?

**Answer**

Because every variable must be declared with a data type before it is used. The compiler prevents assigning incompatible values.

---

## 8. What is the difference between Integer and Long?

**Answer**

- `Integer` stores 32-bit signed whole numbers.
- `Long` stores 64-bit signed whole numbers and supports much larger values.

---

## 9. What is the difference between Decimal and Double?

**Answer**

- `Decimal` provides high precision and is used for financial calculations.
- `Double` uses floating-point arithmetic and is suitable for scientific calculations.

---

## 10. Why should Decimal be used for currency?

**Answer**

Because it provides better precision and avoids floating-point rounding errors.

---

## 11. What is the difference between Date and Datetime?

**Answer**

- `Date` stores only the date.
- `Datetime` stores both the date and time.

---

## 12. What is the Id data type?

**Answer**

`Id` is a Salesforce-specific primitive data type used to store Salesforce record IDs.

---

## 13. What is Blob?

**Answer**

`Blob` stores binary data such as files, images, PDFs, and attachments.

---

# Operators

## 14. What is an operator?

**Answer**

An operator is a symbol that performs an operation on one or more operands.

---

## 15. What are the different types of operators in Apex?

**Answer**

- Arithmetic
- Assignment
- Comparison (Relational)
- Equality
- Logical
- Conditional (Ternary)

---

## 16. What is the difference between `=` and `==`?

**Answer**

- `=` assigns a value.
- `==` compares two values.

---

## 17. What does the modulus operator do?

**Answer**

The modulus (`%`) operator returns the remainder after division.

---

## 18. What is the ternary operator?

**Answer**

The ternary operator is a shorthand version of an `if-else` statement.

Example:

```apex
String result = marks >= 35 ? 'Pass' : 'Fail';
```

---

## 19. What is operator precedence?

**Answer**

Operator precedence determines the order in which operators are evaluated in an expression. Parentheses `()` have the highest precedence and should be used to make expressions clearer.

---

# If-Else

## 20. What is an if statement?

**Answer**

An `if` statement executes a block of code only when its condition evaluates to `true`.

---

## 21. What is the difference between if and if-else?

**Answer**

- `if` executes code only when the condition is true.
- `if-else` provides an alternate block when the condition is false.

---

## 22. When should you use an else-if ladder?

**Answer**

When multiple mutually exclusive conditions need to be checked.

---

## 23. What is a nested if statement?

**Answer**

A nested `if` is an `if` statement placed inside another `if` statement.

---

# Switch

## 24. Why use a switch statement?

**Answer**

A switch statement improves readability when comparing one variable against multiple constant values.

---

## 25. What keywords are used in an Apex switch statement?

**Answer**

- `switch on`
- `when`
- `when else`

---

## 26. Does Apex switch require a break statement?

**Answer**

No. Apex automatically exits the switch after executing the matching `when` block.

---

## 27. What data types can be used with switch?

**Answer**

Apex supports:

- Integer
- String
- Enum
- sObject type

---

# Loops

## 28. What is a loop?

**Answer**

A loop repeatedly executes a block of code until a condition becomes false.

---

## 29. What types of loops are available in Apex?

**Answer**

- `for`
- Enhanced `for`
- `while`
- `do-while`

---

## 30. What is the difference between a for loop and an enhanced for loop?

**Answer**

A `for` loop uses an index, while an enhanced `for` loop directly iterates over collections.

---

## 31. What is the difference between while and do-while?

**Answer**

- `while` checks the condition before execution.
- `do-while` executes once before checking the condition.

---

## 32. What is the purpose of break?

**Answer**

`break` immediately terminates the loop.

---

## 33. What is the purpose of continue?

**Answer**

`continue` skips the current iteration and moves to the next iteration.

---

## 34. Why should SOQL not be written inside loops?

**Answer**

It can exceed Salesforce governor limits. Instead, bulkify your code by querying records outside the loop.

---

## 35. Why should DML not be written inside loops?

**Answer**

It results in multiple DML statements, which can exceed governor limits. Collect records and perform a single DML operation after the loop.

---

# Methods

## 36. What is a method?

**Answer**

A method is a reusable block of code that performs a specific task.

---

## 37. What is the difference between parameters and arguments?

**Answer**

- Parameters are declared in the method definition.
- Arguments are the actual values passed when calling the method.

---

## 38. What is a void method?

**Answer**

A void method performs an action but does not return a value.

---

## 39. What is method overloading?

**Answer**

Method overloading allows multiple methods with the same name but different parameter lists.

---

## 40. What is the difference between a static method and an instance method?

**Answer**

- Static methods belong to the class and are called using the class name.
- Instance methods belong to an object and require object creation.

---

## 41. What is recursion?

**Answer**

Recursion is a technique where a method calls itself until a base condition is reached.

---

## 42. Can methods return objects?

**Answer**

Yes. Methods can return primitive values, collections, sObjects, custom classes, or any valid Apex type.

---

# Rapid Fire Questions

### 43. Which data type is best for currency?

**Answer:** `Decimal`

---

### 44. Which loop is most commonly used in Apex?

**Answer:** Enhanced `for` loop

---

### 45. Which loop always executes at least once?

**Answer:** `do-while`

---

### 46. Which keyword exits a loop immediately?

**Answer:** `break`

---

### 47. Which keyword skips the current iteration?

**Answer:** `continue`

---

### 48. Which operator checks equality?

**Answer:** `==`

---

### 49. Which keyword provides the default block in a switch statement?

**Answer:** `when else`

---

### 50. Can methods be overloaded by changing only the return type?

**Answer:** No.

---

# Final Revision Checklist

Before moving to **02-OOP**, make sure you can confidently answer:

- ✅ What are variables and how are they used?
- ✅ What are the primitive data types in Apex?
- ✅ Which operator should be used in different situations?
- ✅ When should you use `if-else` versus `switch`?
- ✅ Which loop is appropriate for different scenarios?
- ✅ How do methods improve code reusability?
- ✅ Why should SOQL and DML not be used inside loops?
- ✅ What is method overloading?
- ✅ What is recursion?
- ✅ What is the difference between static and instance methods?

---

# Next Step

Congratulations! 🎉 You have completed **01-Apex-Basics**.

The next module is **02-OOP**, where you'll learn:

- Classes
- Constructors
- Static Members
- `this` Keyword
- Inheritance
- Polymorphism
- Abstraction
- Interfaces
- Enums
- Access Modifiers

These concepts form the foundation of object-oriented Apex development.
