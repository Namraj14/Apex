# Best Practices

Following best practices while using operators makes your Apex code easier to read, maintain, and debug.

- Use parentheses `()` to improve readability and avoid confusion in complex expressions.
- Use `Decimal` instead of `Double` for financial calculations.
- Avoid writing overly complex conditions in a single `if` statement.
- Use the ternary operator only for simple conditions.
- Use meaningful variable names when performing calculations.
- Keep logical conditions simple and readable.
- Avoid unnecessary arithmetic operations inside loops.
- Always verify division operations to prevent unexpected results.

### Good Example

```apex
Boolean isEligible =
    age >= 18 &&
    hasDrivingLicense;

if(isEligible){
    System.debug('Eligible');
}
```

### Bad Example

```apex
if(age>=18&&hasDrivingLicense==true&&isCitizen==true||isVIP){
    System.debug('Eligible');
}
```

The second example is difficult to read and maintain.

---

# Common Mistakes

### 1. Using `=` instead of `==`

❌ Incorrect

```apex
if(age = 18){
}
```

✔ Correct

```apex
if(age == 18){
}
```

---

### 2. Using Double for Currency

❌

```apex
Double amount = 1999.99;
```

✔

```apex
Decimal amount = 1999.99;
```

---

### 3. Integer Division

```apex
Integer result = 10 / 3;

System.debug(result);
```

Output

```
3
```

Many beginners expect `3.333`.

Use Decimal instead.

```apex
Decimal result = 10.0 / 3;
```

---

### 4. Forgetting Operator Precedence

```apex
Integer result = 10 + 5 * 2;
```

Many people expect `30`.

Actual output:

```
20
```

Use parentheses if required.

---

### 5. Writing Complex Conditions

❌

```apex
if(a && b || c && d || e){
}
```

✔

Break the logic into smaller variables.

```apex
Boolean hasAccess =
    (a && b) ||
    (c && d) ||
    e;

if(hasAccess){
}
```

---

# Interview Questions & Answers

## 1. What is an operator?

**Answer**

An operator is a special symbol that performs an operation on one or more operands (values or variables).

Example:

```apex
Integer sum = 10 + 20;
```

Here, `+` is the operator.

---

## 2. What are the different types of operators in Apex?

**Answer**

Apex supports:

- Arithmetic Operators
- Assignment Operators
- Comparison (Relational) Operators
- Equality Operators
- Logical Operators
- Conditional (Ternary) Operator

---

## 3. What is the difference between `=` and `==`?

**Answer**

`=` is the assignment operator.

```apex
Integer age = 25;
```

`==` is the equality operator used for comparison.

```apex
if(age == 25){
}
```

---

## 4. What is the modulus operator?

**Answer**

The modulus operator (`%`) returns the remainder after division.

Example:

```apex
10 % 3
```

Output

```
1
```

A common use case is checking whether a number is even or odd.

---

## 5. What is the difference between pre-increment and post-increment?

**Answer**

Pre-increment increases the value before it is used.

```apex
Integer a = 5;
Integer b = ++a;
```

Result

```
a = 6
b = 6
```

Post-increment uses the value first and then increases it.

```apex
Integer a = 5;
Integer b = a++;
```

Result

```
a = 6
b = 5
```

---

## 6. What is the difference between `&&` and `||`?

**Answer**

`&&` (AND)

Returns `true` only if **all** conditions are true.

`||` (OR)

Returns `true` if **at least one** condition is true.

---

## 7. What does the NOT (`!`) operator do?

**Answer**

The NOT operator reverses a Boolean value.

Example

```apex
Boolean isActive = false;

System.debug(!isActive);
```

Output

```
true
```

---

## 8. What is the ternary operator?

**Answer**

The ternary operator is a shorthand version of an `if-else` statement.

Syntax

```apex
condition ? valueIfTrue : valueIfFalse;
```

Example

```apex
String result = marks >= 35 ? 'Pass' : 'Fail';
```

---

## 9. Which operator has higher precedence: `*` or `+`?

**Answer**

Multiplication (`*`) has higher precedence than addition (`+`).

Example

```apex
10 + 5 * 2
```

Output

```
20
```

---

## 10. How can operator precedence be controlled?

**Answer**

Using parentheses.

Example

```apex
(10 + 5) * 2
```

Output

```
30
```

---

## 11. Why is `Decimal` preferred over `Double` for currency?

**Answer**

`Decimal` provides higher precision and avoids floating-point rounding errors, making it ideal for financial calculations.

---

## 12. Give a real-world Salesforce example of logical operators.

**Answer**

```apex
if(
    opportunity.StageName == 'Closed Won'
    &&
    opportunity.Amount > 100000
){
    System.debug('High Value Opportunity');
}
```

Here, both conditions must be true.

---

## 13. What is integer division?

**Answer**

When both operands are integers, Apex returns an integer result.

Example

```apex
10 / 3
```

Output

```
3
```

To obtain a decimal result, use `Decimal`.

---

## 14. Can comparison operators return anything other than a Boolean?

**Answer**

No.

Comparison operators always return either `true` or `false`.

---

## 15. Which operator is most commonly used in Apex triggers?

**Answer**

There is no single "most common" operator, but the following are frequently used:

- `==`
- `!=`
- `&&`
- `||`
- `=`

They are used for checking trigger conditions and assigning values.

---

# Practice Questions

### Basic

1. Add two numbers using the `+` operator.
2. Find the remainder of 25 divided by 4.
3. Calculate the average of five marks.
4. Increment a variable using `++`.
5. Decrement a variable using `--`.

---

### Intermediate

6. Check whether a student has passed using comparison operators.
7. Check whether a number is even or odd using `%`.
8. Determine if a user can log in using logical operators.
9. Use the ternary operator to determine whether a customer receives a discount.
10. Compare two Account names using equality operators.

---

### Salesforce Scenarios

11. Check if an Opportunity is **Closed Won** and the amount is greater than ₹1,00,000.
12. Calculate the total amount for an Opportunity using quantity and unit price.
13. Determine whether a Case should be escalated based on Priority and Status.
14. Validate that an Account is Active before creating a Contact.
15. Check if a logged-in user is either a System Administrator or Sales Manager.

---

# Key Takeaways

- Operators perform actions on variables and values.
- Arithmetic operators are used for calculations.
- Assignment operators assign and update values.
- Comparison operators return Boolean values.
- Logical operators combine multiple conditions.
- The ternary operator provides a concise alternative to simple `if-else` statements.
- Parentheses improve readability and control operator precedence.
- Use `Decimal` for monetary calculations instead of `Double`.

---

# Summary

Operators are fundamental to Apex programming because they allow developers to manipulate data, perform calculations, compare values, and implement business logic. Understanding arithmetic, assignment, comparison, logical, equality, and conditional operators is essential for writing efficient Apex code. Mastering operators also provides the foundation for upcoming topics such as **If-Else Statements**, **Switch Statements**, **Loops**, and **Methods**, where operators are used extensively to control program flow and implement real-world business requirements.
