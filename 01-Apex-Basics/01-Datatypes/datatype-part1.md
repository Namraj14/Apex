# Data Types in Apex

Data types are one of the fundamental concepts of Apex programming. Every variable in Apex must have a data type that defines what kind of value it can store. Choosing the appropriate data type improves code readability, ensures type safety, and helps prevent errors during compilation.

This chapter focuses on the **primitive data types** available in Apex. Other data types such as Collections, Enums, and sObjects are covered in their respective sections of this repository.

---

# Table of Contents

- What is a Data Type?
- Why Do We Need Data Types?
- Classification of Data Types
- Primitive Data Types
  - Integer
  - Long
  - Decimal
  - Double
  - Boolean
  - String
  - Date
  - Time
  - Datetime
  - Id
  - Blob

---

# What is a Data Type?

A **data type** defines the type of data that a variable can store. It tells the Apex compiler what kind of value is expected and what operations can be performed on it.

Every variable in Apex must be declared with a data type.

### Syntax

```apex
DataType variableName = value;
```

### Example

```apex
Integer age = 25;
String company = 'Salesforce';
Boolean isActive = true;
Decimal salary = 55000.75;
```

In the above example:

- `Integer` stores whole numbers.
- `String` stores text.
- `Boolean` stores `true` or `false`.
- `Decimal` stores precise decimal values.

---

# Why Do We Need Data Types?

Data types are important because they:

- Define what kind of value a variable can store.
- Prevent invalid assignments.
- Help the compiler detect errors before execution.
- Improve code readability.
- Ensure better memory management.
- Provide methods specific to each data type.

For example, assigning a text value to an Integer variable is not allowed.

```apex
Integer age = 'Twenty Five';
```

The above code results in a compilation error because an `Integer` cannot store text.

---

# Classification of Data Types

Apex data types can be broadly classified into two categories.

```text
Data Types
│
├── Primitive Data Types
│
└── Non-Primitive Data Types
```

### Primitive Data Types

Primitive data types store simple values.

They include:

- Integer
- Long
- Decimal
- Double
- Boolean
- String
- Date
- Time
- Datetime
- Id
- Blob

### Non-Primitive Data Types

Non-primitive data types represent objects.

Examples include:

- Collections (List, Set, Map)
- sObjects
- User Defined Classes
- Enums

> **Note:** Non-primitive data types are covered in later sections of this repository.

---

# Primitive Data Types

Primitive data types are built into Apex and are used to store simple values such as numbers, text, dates, and boolean values.

---

# Integer

## Definition

`Integer` is used to store **whole numbers** without decimal places.

It is a **32-bit signed integer**.

### Syntax

```apex
Integer variableName;
```

### Example

```apex
Integer age = 25;

System.debug(age);
```

### Output

```
25
```

### Real-World Salesforce Example

```apex
Integer totalCases = 120;

System.debug('Total Cases : ' + totalCases);
```

### Common Use Cases

- Quantity
- Age
- Number of records
- Total cases
- Loop counters

---

# Long

## Definition

`Long` is used to store **very large whole numbers**.

It is a **64-bit signed integer** and can store much larger values than `Integer`.

### Syntax

```apex
Long variableName;
```

### Example

```apex
Long population = 8000000000L;

System.debug(population);
```

> **Note:** The suffix `L` indicates that the value is a Long.

### Real-World Salesforce Example

```apex
Long totalTransactions = 9876543210L;
```

### Common Use Cases

- Population
- Large counters
- External system identifiers
- Huge numerical values

---

## Integer vs Long

| Integer | Long |
|----------|------|
| 32-bit | 64-bit |
| Stores smaller whole numbers | Stores much larger whole numbers |
| Uses less memory | Uses more memory |
| Most commonly used | Used only when very large values are required |

---

# Decimal

## Definition

`Decimal` is used to store numbers containing decimal places with **high precision**.

It is the preferred data type for financial and monetary calculations.

### Syntax

```apex
Decimal variableName;
```

### Example

```apex
Decimal salary = 65000.75;

System.debug(salary);
```

### Real-World Salesforce Example

```apex
Decimal opportunityAmount = 250000.50;
```

### Common Use Cases

- Currency
- Discounts
- Tax calculations
- Financial reports
- Percentages

### Why Use Decimal for Currency?

Financial calculations require precision.

Using `Decimal` avoids the rounding issues that can occur with floating-point arithmetic.

```apex
Decimal price = 1999.99;
```

This makes `Decimal` the recommended choice for currency values in Salesforce.

---

# Double

## Definition

`Double` stores floating-point numbers.

Unlike `Decimal`, it uses floating-point arithmetic, which may introduce small precision errors.

### Syntax

```apex
Double variableName;
```

### Example

```apex
Double temperature = 37.8;

System.debug(temperature);
```

### Real-World Salesforce Example

```apex
Double latitude = 19.0760;
Double longitude = 72.8777;
```

### Common Use Cases

- Scientific calculations
- GPS coordinates
- Measurements
- Engineering calculations

---

## Decimal vs Double

| Decimal | Double |
|----------|---------|
| High precision | Floating-point precision |
| Best for money | Best for scientific calculations |
| Preferred in Salesforce business applications | Used when floating-point values are acceptable |

**Interview Tip**

Whenever the interviewer asks:

> Which data type should be used for storing currency?

The correct answer is **Decimal**, not Double.

---
