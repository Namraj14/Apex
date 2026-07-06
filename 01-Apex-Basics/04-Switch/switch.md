# Switch Statement in Apex

A `switch` statement is a control statement that allows you to execute different blocks of code based on the value of a single expression. It provides a cleaner and more readable alternative to long `if-else-if` ladders when comparing the same variable against multiple values.

The `switch` statement was introduced in Apex to simplify decision-making and improve code readability.

---

# Table of Contents

- What is a Switch Statement?
- Why Do We Need Switch?
- Syntax
- How Switch Works
- Switch with Integer
- Switch with String
- Switch with Enum
- Switch with sObject
- Multiple Values in a Case
- when else
- Switch vs If-Else
- Real-World Salesforce Examples
- Best Practices
- Common Mistakes
- Interview Questions & Answers
- Practice Questions
- Summary

---

# What is a Switch Statement?

A **switch statement** evaluates a single expression and executes the matching `when` block.

Unlike Java, Apex uses the keywords **`when`** and **`when else`** instead of `case` and `default`.

---

# Why Do We Need Switch?

Switch statements:

- Improve code readability.
- Reduce long `if-else-if` ladders.
- Make code easier to maintain.
- Improve organization when comparing one variable against multiple values.

---

# Syntax

```apex
switch on expression {

    when value1{
        // Code
    }

    when value2{
        // Code
    }

    when else{
        // Default Code
    }

}
```

---

# How Switch Works

1. Apex evaluates the expression after `switch on`.
2. It compares the value with each `when`.
3. If a match is found, that block executes.
4. If no match is found, `when else` executes.
5. Only one matching block executes.

---

# Switch with Integer

```apex
Integer day = 3;

switch on day{

    when 1{
        System.debug('Monday');
    }

    when 2{
        System.debug('Tuesday');
    }

    when 3{
        System.debug('Wednesday');
    }

    when else{
        System.debug('Invalid Day');
    }

}
```

**Output**

```
Wednesday
```

---

# Switch with String

```apex
String status = 'Closed';

switch on status{

    when 'New'{
        System.debug('Case Created');
    }

    when 'Working'{
        System.debug('Case In Progress');
    }

    when 'Closed'{
        System.debug('Case Closed');
    }

    when else{
        System.debug('Unknown Status');
    }

}
```

---

# Switch with Enum

Suppose an Enum is defined as:

```apex
public enum Priority{

    Low,
    Medium,
    High

}
```

Usage:

```apex
Priority priority = Priority.High;

switch on priority{

    when Low{
        System.debug('Low Priority');
    }

    when Medium{
        System.debug('Medium Priority');
    }

    when High{
        System.debug('High Priority');
    }

}
```

---

# Switch with sObject

Apex allows switching based on the type of an sObject.

```apex
sObject record = new Account(Name='ABC');

switch on record{

    when Account accountRecord{
        System.debug(accountRecord.Name);
    }

    when Contact contactRecord{
        System.debug(contactRecord.FirstName);
    }

    when else{
        System.debug('Unsupported Record');
    }

}
```

This is useful when working with generic `sObject` variables.

---

# Multiple Values in a Case

You can match multiple values in a single `when` block.

```apex
String grade = 'A';

switch on grade{

    when 'A', 'A+'{
        System.debug('Excellent');
    }

    when 'B', 'B+'{
        System.debug('Good');
    }

    when else{
        System.debug('Average');
    }

}
```

---

# when else

`when else` works like the `else` block in an `if-else` statement.

It executes when no other `when` block matches.

```apex
switch on month{

    when 1{
        System.debug('January');
    }

    when else{
        System.debug('Unknown Month');
    }

}
```

---

# Switch vs If-Else

| Switch | If-Else |
|---------|----------|
| Cleaner for multiple fixed values | Better for complex conditions |
| Compares one expression | Can compare multiple expressions |
| More readable | Can become lengthy |
| Uses `when` | Uses `if`, `else if`, `else` |

---

# Real-World Salesforce Examples

## Case Status

```apex
switch on caseRecord.Status{

    when 'New'{
        System.debug('Assign to Queue');
    }

    when 'Working'{
        System.debug('Notify Owner');
    }

    when 'Closed'{
        System.debug('Send Survey');
    }

    when else{
        System.debug('Unknown Status');
    }

}
```

---

## Opportunity Stage

```apex
switch on opportunity.StageName{

    when 'Prospecting'{
        System.debug('Initial Discussion');
    }

    when 'Closed Won'{
        System.debug('Generate Invoice');
    }

    when 'Closed Lost'{
        System.debug('Collect Feedback');
    }

}
```

---

## Account Type

```apex
switch on account.Type{

    when 'Customer'{
        System.debug('Customer Portal');
    }

    when 'Partner'{
        System.debug('Partner Portal');
    }

    when else{
        System.debug('Standard Account');
    }

}
```

---

# Best Practices

- Use `switch` when comparing the same variable against multiple values.
- Keep each `when` block small and focused.
- Always include a `when else` block when appropriate.
- Use meaningful values in each `when`.
- Prefer `switch` over long `if-else-if` ladders when possible.
- Avoid placing large amounts of logic inside a single `when` block.

---

# Common Mistakes

### 1. Using Variables in `when`

❌ Incorrect

```apex
String value = 'A';

when value{
}
```

`when` values should be constants or enum values.

---

### 2. Forgetting `when else`

Although optional, omitting `when else` may leave unexpected values unhandled.

---

### 3. Using Switch for Complex Conditions

❌

```apex
if(age > 18 && salary > 50000)
```

This type of condition should use `if-else`, not `switch`.

---

### 4. Replacing Every If-Else with Switch

`switch` is only suitable when comparing a **single expression** against multiple fixed values.

---

# Interview Questions & Answers

## 1. What is a switch statement?

**Answer**

A switch statement is a control statement that executes different code blocks based on the value of a single expression.

---

## 2. Why use a switch instead of if-else?

**Answer**

A switch statement improves readability and maintainability when comparing the same variable against multiple constant values.

---

## 3. What keyword is used in Apex switch statements?

**Answer**

Apex uses:

- `switch on`
- `when`
- `when else`

Unlike Java, it does not use `case` or `default`.

---

## 4. What data types can be used with switch?

**Answer**

Apex supports switching on:

- Integer
- String
- Enum
- sObject type

---

## 5. What is `when else`?

**Answer**

`when else` acts like the default case. It executes when none of the `when` conditions match.

---

## 6. Does Apex switch require a break statement?

**Answer**

No.

Unlike Java, Apex automatically exits the switch after executing the matching `when` block.

---

## 7. Can multiple values be used in one `when` block?

**Answer**

Yes.

Example:

```apex
when 'A', 'A+'{
}
```

---

## 8. Can switch evaluate complex conditions?

**Answer**

No.

For complex logical expressions involving `&&`, `||`, `<`, `>`, etc., use `if-else`.

---

## 9. Can switch be used with sObjects?

**Answer**

Yes.

Apex allows switching based on the runtime type of an sObject.

---

## 10. When should you avoid using switch?

**Answer**

Avoid using switch when:

- Multiple variables need to be compared.
- Conditions involve ranges.
- Complex logical expressions are required.

In such cases, `if-else` is a better choice.

---

# Practice Questions

## Basic

1. Display the day of the week using an Integer.
2. Display the month name using a switch statement.
3. Display grades (A, B, C, D) using switch.
4. Print different messages for different account types.
5. Use `when else` to handle invalid input.

---

## Intermediate

6. Handle Opportunity stages using switch.
7. Handle Case priorities using switch.
8. Handle User Profiles using switch.
9. Create an Enum and switch on its values.
10. Switch on an sObject type.

---

## Salesforce Scenarios

11. Send different notifications based on Case Status.
12. Execute different approval logic based on Opportunity Stage.
13. Assign Accounts to different queues based on Type.
14. Display different dashboard messages based on User Role.
15. Process records differently based on sObject type.

---

# Key Takeaways

- `switch` provides a cleaner alternative to long `if-else-if` ladders.
- Apex uses `switch on`, `when`, and `when else`.
- No `break` statement is required.
- Supports Integer, String, Enum, and sObject types.
- Best suited for comparing a single expression against multiple fixed values.

---

# Summary

The `switch` statement simplifies decision-making by allowing a single expression to be compared against multiple fixed values. It improves readability, reduces repetitive `if-else-if` statements, and makes Apex code easier to maintain. While `switch` is ideal for fixed-value comparisons, `if-else` remains the preferred choice for complex conditions and logical expressions.
