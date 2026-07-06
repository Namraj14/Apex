# Boolean

## Definition

`Boolean` is a primitive data type that can store only one of two values:

- `true`
- `false`

It is commonly used for decision-making, validations, and conditional statements.

### Syntax

```apex
Boolean variableName;
```

### Example

```apex
Boolean isActive = true;

System.debug(isActive);
```

### Output

```
true
```

### Real-World Salesforce Example

```apex
Boolean isClosedWon = opportunity.StageName == 'Closed Won';

if(isClosedWon){
    System.debug('Opportunity has been won.');
}
```

### Common Use Cases

- User permissions
- Validation checks
- Active/Inactive status
- Login status
- Record existence checks

---

# String

## Definition

A `String` is used to store text or a sequence of characters.

Strings are enclosed within single quotes (`' '`).

> **Note:** String methods such as `substring()`, `contains()`, `replace()`, `split()`, etc., are covered in **04-Strings/StringMethods.md**.

### Syntax

```apex
String variableName;
```

### Example

```apex
String company = 'Salesforce';

System.debug(company);
```

### Output

```
Salesforce
```

### Real-World Salesforce Example

```apex
String accountName = 'Universal Containers';

System.debug(accountName);
```

### Common Use Cases

- Names
- Emails
- Phone Numbers
- Addresses
- Product Names
- Company Names

---

# Date

## Definition

`Date` stores only the calendar date.

It does **not** store time.

> **Note:** Date methods are covered in **05-Date-Time/DateExamples.md**.

### Syntax

```apex
Date variableName;
```

### Example

```apex
Date today = Date.today();

System.debug(today);
```

### Output

```
2026-07-06
```

### Real-World Salesforce Example

```apex
Date contractStartDate = Date.today();
```

### Common Use Cases

- Birth Date
- Contract Date
- Due Date
- Invoice Date
- Holiday Date

---

# Time

## Definition

`Time` stores only the time.

It does **not** store the date.

### Syntax

```apex
Time variableName;
```

### Example

```apex
Time meetingTime = Time.newInstance(10, 30, 0, 0);

System.debug(meetingTime);
```

### Output

```
10:30:00.000Z
```

### Real-World Salesforce Example

```apex
Time officeStartTime = Time.newInstance(9, 0, 0, 0);
```

### Common Use Cases

- Office timings
- Meeting schedules
- Reminder times
- Business hours

---

# Datetime

## Definition

`Datetime` stores both the **date and time** together.

> **Note:** Datetime methods are covered in **05-Date-Time/DateTimeExamples.md**.

### Syntax

```apex
Datetime variableName;
```

### Example

```apex
Datetime currentTime = Datetime.now();

System.debug(currentTime);
```

### Output

```
2026-07-06 11:45:25
```

### Real-World Salesforce Example

```apex
Datetime caseCreatedTime = Datetime.now();
```

### Common Use Cases

- Record creation time
- Last modified time
- Login timestamp
- Audit logs

---

# Date vs Datetime

| Date | Datetime |
|------|----------|
| Stores only date | Stores both date and time |
| Example: 2026-07-06 | Example: 2026-07-06 10:30:15 |
| Used for birthdays, due dates | Used for timestamps and audit fields |

---

# Id

## Definition

`Id` is a Salesforce-specific primitive data type used to store Salesforce Record IDs.

Salesforce record IDs are available in two formats:

- 15-character ID (Case Sensitive)
- 18-character ID (Case Insensitive)

### Syntax

```apex
Id variableName;
```

### Example

```apex
Id accountId = '0015j00000ABCDEF';
```

### Real-World Salesforce Example

```apex
Account acc = [SELECT Id, Name FROM Account LIMIT 1];

Id accountId = acc.Id;

System.debug(accountId);
```

### Common Use Cases

- Account Id
- Contact Id
- Opportunity Id
- Case Id
- User Id

---

## String vs Id

| String | Id |
|---------|----|
| Stores any text | Stores only Salesforce Record IDs |
| No validation | Salesforce validates the value |
| General-purpose | Salesforce-specific |

**Interview Tip**

Although an `Id` can be assigned to a `String`, using the `Id` data type is recommended because it provides validation and makes the code more readable.

---

# Blob

## Definition

`Blob` stores binary data.

It is commonly used when working with:

- Files
- Images
- PDFs
- Documents
- Attachments

### Syntax

```apex
Blob variableName;
```

### Example

```apex
Blob fileData = Blob.valueOf('Hello World');

System.debug(fileData);
```

### Real-World Salesforce Example

```apex
Blob pdfData = Blob.valueOf('Sample PDF Content');
```

### Common Use Cases

- ContentVersion
- File Uploads
- Email Attachments
- Image Processing
- PDF Generation

---

# Primitive Data Types Summary

| Data Type | Description | Example |
|------------|-------------|---------|
| Integer | Stores whole numbers | `25` |
| Long | Stores very large whole numbers | `8000000000L` |
| Decimal | Stores precise decimal numbers | `2500.75` |
| Double | Stores floating-point numbers | `37.5` |
| Boolean | Stores `true` or `false` | `true` |
| String | Stores text | `'Salesforce'` |
| Date | Stores only date | `Date.today()` |
| Time | Stores only time | `Time.newInstance()` |
| Datetime | Stores both date and time | `Datetime.now()` |
| Id | Stores Salesforce Record IDs | `001...` |
| Blob | Stores binary data | `Blob.valueOf()` |

---

# Best Practices

- Use **Integer** for normal whole numbers.
- Use **Long** only when Integer is insufficient.
- Use **Decimal** for currency and financial calculations.
- Use **Double** only for scientific or measurement-related values.
- Use **Boolean** for conditions and flags.
- Use **Id** instead of **String** when storing Salesforce record IDs.
- Choose the smallest appropriate data type.
- Use meaningful variable names.

---

# Common Mistakes

- Using `Double` for currency calculations.
- Storing Salesforce IDs in `String` instead of `Id`.
- Using `Datetime` when only a date is required.
- Using `Long` unnecessarily for small numbers.
- Choosing incorrect data types for business requirements.

---

# Interview Questions & Answers

### 1. What is a data type?

**Answer:**

A data type defines the kind of value a variable can store. It helps the compiler validate data and ensures type safety.

---

### 2. Why is Apex called a strongly typed language?

**Answer:**

Because every variable must be declared with a specific data type before it is used. The compiler prevents assigning incompatible values.

Example:

```apex
Integer age = 25;
```

---

### 3. What is the difference between Integer and Long?

**Answer:**

- `Integer` stores 32-bit signed whole numbers.
- `Long` stores 64-bit signed whole numbers and is used for much larger values.

---

### 4. What is the difference between Decimal and Double?

**Answer:**

- `Decimal` provides high precision and is ideal for financial calculations.
- `Double` uses floating-point arithmetic and is better suited for scientific calculations.

---

### 5. Which data type should be used for storing currency?

**Answer:**

`Decimal`, because it provides higher precision and avoids floating-point rounding issues.

---

### 6. What is the purpose of the Boolean data type?

**Answer:**

It stores only `true` or `false` and is used for conditional logic, validations, and decision-making.

---

### 7. What is the difference between Date and Datetime?

**Answer:**

- `Date` stores only the calendar date.
- `Datetime` stores both the date and time.

---

### 8. What is the Id data type?

**Answer:**

`Id` is a Salesforce-specific primitive data type used to store Salesforce record IDs. It supports both 15-character and 18-character record IDs.

---

### 9. What is the difference between String and Id?

**Answer:**

A `String` can store any text, whereas an `Id` is specifically designed for Salesforce record IDs and provides built-in validation.

---

### 10. What is Blob used for?

**Answer:**

`Blob` stores binary data such as files, images, PDFs, email attachments, and documents.

---

# Practice Questions

1. Declare one variable for every primitive data type in Apex.
2. Create a program to store a customer's age, name, account balance, and active status.
3. Store today's date using the appropriate data type.
4. Store the current date and time.
5. Create a variable to store an Account record ID.
6. Create a Blob variable from a string.
7. Identify the correct data type for the following:
   - Opportunity Amount
   - Employee Name
   - Meeting Time
   - Contract Start Date
   - Case Record ID
   - Product Image

---

# Summary

Data types define the kind of values that variables can store in Apex. Choosing the correct data type improves readability, prevents errors, and ensures efficient memory usage. Primitive data types such as `Integer`, `Decimal`, `Boolean`, `String`, `Date`, `Datetime`, `Id`, and `Blob` form the foundation of Apex programming and are used extensively throughout Salesforce development.
