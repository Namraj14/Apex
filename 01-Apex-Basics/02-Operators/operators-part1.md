# Operators in Apex

Operators are special symbols that perform operations on one or more operands (variables or values). They allow you to manipulate data, perform calculations, compare values, assign values, and evaluate logical conditions.

Operators are an essential part of Apex programming and are used extensively in business logic, calculations, validations, loops, and conditional statements.

---

# Table of Contents

- What are Operators?
- Why Do We Need Operators?
- Types of Operators
- Arithmetic Operators
- Assignment Operators

---

# What are Operators?

An **operator** is a symbol that tells Apex to perform a specific operation on one or more operands.

Example:

```apex
Integer a = 10;
Integer b = 20;

Integer sum = a + b;
```

Here:

- `a` and `b` are **operands**.
- `+` is the **operator**.

---

# Why Do We Need Operators?

Operators help us:

- Perform mathematical calculations.
- Assign values to variables.
- Compare values.
- Evaluate conditions.
- Make decisions.
- Build business logic.
- Simplify code.

Without operators, programming would be extremely difficult because every operation would require a built-in function.

---

# Types of Operators in Apex

Apex provides the following types of operators:

1. Arithmetic Operators
2. Assignment Operators
3. Comparison (Relational) Operators
4. Logical Operators
5. Equality Operators
6. Conditional (Ternary) Operator

---

# Arithmetic Operators

Arithmetic operators are used to perform mathematical calculations.

| Operator | Description | Example |
|----------|-------------|---------|
| `+` | Addition | `a + b` |
| `-` | Subtraction | `a - b` |
| `*` | Multiplication | `a * b` |
| `/` | Division | `a / b` |
| `%` | Modulus (Remainder) | `a % b` |
| `++` | Increment | `a++` |
| `--` | Decrement | `a--` |

---

## Addition (+)

Adds two values.

```apex
Integer a = 10;
Integer b = 20;

Integer result = a + b;

System.debug(result);
```

**Output**

```
30
```

### Salesforce Example

```apex
Integer totalCases = openCases + closedCases;
```

---

## Subtraction (-)

Subtracts one value from another.

```apex
Integer marks = 90;
Integer deduction = 10;

Integer finalMarks = marks - deduction;

System.debug(finalMarks);
```

**Output**

```
80
```

---

## Multiplication (*)

Multiplies two values.

```apex
Integer price = 500;
Integer quantity = 4;

Integer total = price * quantity;

System.debug(total);
```

**Output**

```
2000
```

---

## Division (/)

Divides one value by another.

```apex
Integer totalMarks = 500;
Integer subjects = 5;

Integer average = totalMarks / subjects;

System.debug(average);
```

**Output**

```
100
```

### Note

When both operands are integers, the result is also an integer.

```apex
Integer result = 10 / 3;

System.debug(result);
```

**Output**

```
3
```

To get decimal precision:

```apex
Decimal result = 10.0 / 3;

System.debug(result);
```

---

## Modulus (%)

Returns the remainder after division.

```apex
Integer remainder = 10 % 3;

System.debug(remainder);
```

**Output**

```
1
```

### Common Uses

- Even/Odd number checking
- Cyclic operations
- Pattern generation

Example:

```apex
Integer number = 8;

if(number % 2 == 0){
    System.debug('Even');
}
```

---

## Increment (++)

Increases a variable by one.

```apex
Integer count = 5;

count++;

System.debug(count);
```

**Output**

```
6
```

---

### Pre-Increment

Value is increased before use.

```apex
Integer a = 5;

Integer b = ++a;

System.debug(a);

System.debug(b);
```

**Output**

```
6
6
```

---

### Post-Increment

Value is used first and then increased.

```apex
Integer a = 5;

Integer b = a++;

System.debug(a);

System.debug(b);
```

**Output**

```
6
5
```

---

## Decrement (--)

Decreases a variable by one.

```apex
Integer count = 5;

count--;

System.debug(count);
```

**Output**

```
4
```

---

### Pre-Decrement

```apex
Integer a = 10;

Integer b = --a;

System.debug(a);

System.debug(b);
```

**Output**

```
9
9
```

---

### Post-Decrement

```apex
Integer a = 10;

Integer b = a--;

System.debug(a);

System.debug(b);
```

**Output**

```
9
10
```

---

# Assignment Operators

Assignment operators assign values to variables.

| Operator | Description | Example |
|----------|-------------|---------|
| `=` | Assign | `a = 10` |
| `+=` | Add and Assign | `a += 5` |
| `-=` | Subtract and Assign | `a -= 5` |
| `*=` | Multiply and Assign | `a *= 2` |
| `/=` | Divide and Assign | `a /= 2` |
| `%=` | Modulus and Assign | `a %= 2` |

---

## Assignment (=)

Assigns a value to a variable.

```apex
Integer age = 25;
```

---

## Addition Assignment (+=)

```apex
Integer total = 100;

total += 50;

System.debug(total);
```

**Output**

```
150
```

Equivalent to:

```apex
total = total + 50;
```

---

## Subtraction Assignment (-=)

```apex
Integer balance = 500;

balance -= 100;

System.debug(balance);
```

**Output**

```
400
```

Equivalent to:

```apex
balance = balance - 100;
```

---

## Multiplication Assignment (*=)

```apex
Integer salary = 100;

salary *= 3;

System.debug(salary);
```

**Output**

```
300
```

Equivalent to:

```apex
salary = salary * 3;
```

---

## Division Assignment (/=)

```apex
Integer marks = 100;

marks /= 2;

System.debug(marks);
```

**Output**

```
50
```

Equivalent to:

```apex
marks = marks / 2;
```

---

## Modulus Assignment (%=)

```apex
Integer value = 17;

value %= 5;

System.debug(value);
```

**Output**

```
2
```

Equivalent to:

```apex
value = value % 5;
```

---

# Real-World Salesforce Example

Calculate the total amount for an Opportunity.

```apex
Decimal unitPrice = 1500.50;
Integer quantity = 4;

Decimal totalAmount = unitPrice * quantity;

System.debug(totalAmount);
```

Another example:

```apex
Integer openCases = 15;

openCases += 5;

System.debug('Total Open Cases: ' + openCases);
```

---

**End of Part 1**

The next part will cover:

- Comparison (Relational) Operators
- Equality Operators
- Logical Operators
- Conditional (Ternary) Operator
- Operator Precedence
