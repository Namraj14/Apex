# Comparison (Relational) Operators

Comparison operators are used to compare two values. They always return a **Boolean** value (`true` or `false`).

| Operator | Description | Example |
|----------|-------------|---------|
| `==` | Equal to | `a == b` |
| `!=` | Not Equal to | `a != b` |
| `>` | Greater Than | `a > b` |
| `<` | Less Than | `a < b` |
| `>=` | Greater Than or Equal To | `a >= b` |
| `<=` | Less Than or Equal To | `a <= b` |

---

## Equal To (==)

Checks whether two values are equal.

```apex
Integer a = 10;
Integer b = 10;

System.debug(a == b);
```

**Output**

```
true
```

### Salesforce Example

```apex
if(caseRecord.Status == 'Closed'){
    System.debug('Case is Closed');
}
```

---

## Not Equal To (!=)

Checks whether two values are different.

```apex
Integer a = 10;
Integer b = 20;

System.debug(a != b);
```

**Output**

```
true
```

### Salesforce Example

```apex
if(opportunity.StageName != 'Closed Won'){
    System.debug('Opportunity is still open.');
}
```

---

## Greater Than (>)

Returns `true` if the left operand is greater than the right operand.

```apex
Integer age = 25;

System.debug(age > 18);
```

**Output**

```
true
```

---

## Less Than (<)

Returns `true` if the left operand is less than the right operand.

```apex
Integer quantity = 5;

System.debug(quantity < 10);
```

**Output**

```
true
```

---

## Greater Than or Equal To (>=)

```apex
Integer marks = 75;

System.debug(marks >= 35);
```

**Output**

```
true
```

---

## Less Than or Equal To (<=)

```apex
Integer stock = 20;

System.debug(stock <= 100);
```

**Output**

```
true
```

---

# Equality Operators

Equality operators are used to determine whether two values are equal or not.

The primary equality operators in Apex are:

- `==`
- `!=`

Although these are also comparison operators, they are frequently discussed separately in interviews because they are used extensively when comparing Strings, Ids, and object references.

---

### Example

```apex
String city1 = 'Mumbai';
String city2 = 'Mumbai';

System.debug(city1 == city2);
```

**Output**

```
true
```

---

### Salesforce Example

```apex
if(account.Type == 'Customer'){
    System.debug('Customer Account');
}
```

---

# Logical Operators

Logical operators combine or negate Boolean expressions.

| Operator | Description |
|----------|-------------|
| `&&` | Logical AND |
| `||` | Logical OR |
| `!` | Logical NOT |

---

## Logical AND (&&)

Returns `true` only if **both** conditions are true.

```apex
Integer age = 25;
Boolean hasLicense = true;

if(age >= 18 && hasLicense){
    System.debug('Eligible to Drive');
}
```

### Truth Table

| Condition 1 | Condition 2 | Result |
|-------------|-------------|--------|
| true | true | true |
| true | false | false |
| false | true | false |
| false | false | false |

---

### Salesforce Example

```apex
if(
    opportunity.StageName == 'Closed Won'
    &&
    opportunity.Amount > 100000
){
    System.debug('High Value Opportunity');
}
```

---

## Logical OR (||)

Returns `true` if **at least one** condition is true.

```apex
Boolean isAdmin = false;
Boolean isManager = true;

if(isAdmin || isManager){
    System.debug('Access Granted');
}
```

### Truth Table

| Condition 1 | Condition 2 | Result |
|-------------|-------------|--------|
| true | true | true |
| true | false | true |
| false | true | true |
| false | false | false |

---

### Salesforce Example

```apex
if(
    caseRecord.Priority == 'High'
    ||
    caseRecord.Priority == 'Critical'
){
    System.debug('Immediate Attention Required');
}
```

---

## Logical NOT (!)

Reverses the Boolean value.

```apex
Boolean isClosed = false;

System.debug(!isClosed);
```

**Output**

```
true
```

---

### Salesforce Example

```apex
if(!user.IsActive){
    System.debug('User is Inactive');
}
```

---

# Conditional (Ternary) Operator

The ternary operator is a shorthand version of an `if-else` statement.

### Syntax

```apex
condition ? valueIfTrue : valueIfFalse;
```

---

### Example

```apex
Integer marks = 65;

String result = marks >= 35 ? 'Pass' : 'Fail';

System.debug(result);
```

**Output**

```
Pass
```

---

### Equivalent if-else

```apex
String result;

if(marks >= 35){
    result = 'Pass';
}
else{
    result = 'Fail';
}
```

---

### Salesforce Example

```apex
String status = account.Active__c ? 'Active' : 'Inactive';

System.debug(status);
```

---

# Operator Precedence

When an expression contains multiple operators, Apex evaluates them according to precedence rules.

### Common Order of Precedence

| Priority | Operators |
|----------|-----------|
| 1 | `()` Parentheses |
| 2 | `++`, `--`, `!` |
| 3 | `*`, `/`, `%` |
| 4 | `+`, `-` |
| 5 | `>`, `<`, `>=`, `<=` |
| 6 | `==`, `!=` |
| 7 | `&&` |
| 8 | `||` |
| 9 | `?:` |

---

### Example

```apex
Integer result = 10 + 5 * 2;

System.debug(result);
```

**Output**

```
20
```

Explanation:

```
5 * 2 = 10

10 + 10 = 20
```

---

### Using Parentheses

```apex
Integer result = (10 + 5) * 2;

System.debug(result);
```

**Output**

```
30
```

Parentheses always execute first and improve code readability.

---

# Real-World Salesforce Examples

## Opportunity Discount

```apex
Decimal amount = 50000;

Decimal discount = amount > 25000 ? 10 : 5;

System.debug(discount);
```

---

## High Priority Case

```apex
if(
    caseRecord.Status != 'Closed'
    &&
    caseRecord.Priority == 'High'
){
    System.debug('Escalate Case');
}
```

---

## User Permission

```apex
if(
    user.Profile.Name == 'System Administrator'
    ||
    user.IsActive
){
    System.debug('User Can Access Application');
}
```

---

**End of Part 2**

The final part will cover:

- Best Practices
- Common Mistakes
- Interview Questions & Answers
- Practice Questions
- Summary
