# If-Else Statements in Apex

Conditional statements are used to control the flow of a program by executing different blocks of code based on whether a condition evaluates to `true` or `false`.

The `if-else` statement is one of the most commonly used decision-making constructs in Apex. It helps implement business logic such as validations, approvals, record processing, and user access control.

---

# Table of Contents

- What is an If-Else Statement?
- Why Do We Need If-Else?
- Syntax
- if Statement
- if-else Statement
- else-if Ladder
- Nested if
- Real-World Salesforce Examples
- Best Practices
- Common Mistakes
- Interview Questions & Answers
- Practice Questions
- Summary

---

# What is an If-Else Statement?

An **if-else statement** is a control statement that executes a block of code only if a specified condition is true.

If the condition is false, Apex executes the `else` block (if present).

---

# Why Do We Need If-Else?

We use `if-else` statements to:

- Make decisions in a program.
- Validate user input.
- Execute different logic based on conditions.
- Implement business rules.
- Perform record validations.
- Control application flow.

Without conditional statements, every line of code would execute sequentially, making it impossible to implement business logic.

---

# Syntax

## if

```apex
if(condition){
    // Code to execute if condition is true
}
```

---

## if-else

```apex
if(condition){
    // Executes when condition is true
}
else{
    // Executes when condition is false
}
```

---

## else-if Ladder

```apex
if(condition1){

}
else if(condition2){

}
else{

}
```

---

# if Statement

The `if` statement executes a block of code only when the condition evaluates to `true`.

### Example

```apex
Integer marks = 80;

if(marks >= 35){
    System.debug('Pass');
}
```

**Output**

```
Pass
```

If the condition is false, nothing inside the block executes.

---

# if-else Statement

The `if-else` statement provides an alternative block of code if the condition evaluates to `false`.

### Example

```apex
Integer age = 16;

if(age >= 18){
    System.debug('Eligible to Vote');
}
else{
    System.debug('Not Eligible');
}
```

**Output**

```
Not Eligible
```

---

# else-if Ladder

Use the `else-if` ladder when you need to evaluate multiple conditions.

Conditions are checked from top to bottom. As soon as one condition is `true`, the remaining conditions are skipped.

### Example

```apex
Integer marks = 75;

if(marks >= 90){
    System.debug('Grade A');
}
else if(marks >= 75){
    System.debug('Grade B');
}
else if(marks >= 50){
    System.debug('Grade C');
}
else{
    System.debug('Fail');
}
```

**Output**

```
Grade B
```

---

# Nested if

A nested `if` is an `if` statement placed inside another `if` statement.

Use nested `if` only when one condition depends on another.

### Example

```apex
Integer age = 25;
Boolean hasLicense = true;

if(age >= 18){

    if(hasLicense){
        System.debug('Eligible to Drive');
    }
    else{
        System.debug('License Required');
    }

}
else{
    System.debug('Underage');
}
```

**Output**

```
Eligible to Drive
```

---

# Real-World Salesforce Examples

## Example 1: Validate Opportunity Amount

```apex
if(opportunity.Amount > 100000){
    System.debug('Manager Approval Required');
}
```

---

## Example 2: Check Case Priority

```apex
if(caseRecord.Priority == 'High'){
    System.debug('Escalate Immediately');
}
else{
    System.debug('Normal Processing');
}
```

---

## Example 3: Account Type Validation

```apex
if(account.Type == 'Customer'){
    System.debug('Customer Portal Enabled');
}
else if(account.Type == 'Partner'){
    System.debug('Partner Portal Enabled');
}
else{
    System.debug('Standard Account');
}
```

---

## Example 4: User Access

```apex
if(user.IsActive){
    System.debug('User Can Login');
}
else{
    System.debug('Access Denied');
}
```

---

## Example 5: Discount Calculation

```apex
Decimal amount = 75000;

if(amount >= 50000){
    System.debug('10% Discount');
}
else{
    System.debug('5% Discount');
}
```

---

# Best Practices

- Keep conditions simple and easy to understand.
- Use meaningful variable names.
- Use `else-if` instead of multiple independent `if` statements when conditions are related.
- Avoid deeply nested `if` statements.
- Use logical operators (`&&`, `||`) to combine conditions where appropriate.
- Format code consistently with proper indentation.
- Consider using a `switch` statement when comparing the same variable against multiple values.

---

# Common Mistakes

### 1. Using `=` Instead of `==`

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

### 2. Forgetting Braces

❌

```apex
if(isActive)
System.debug('Active');
```

✔

```apex
if(isActive){
    System.debug('Active');
}
```

---

### 3. Writing Multiple Independent if Statements

❌

```apex
if(marks >= 90){
}

if(marks >= 75){
}

if(marks >= 50){
}
```

✔

```apex
if(marks >= 90){
}
else if(marks >= 75){
}
else if(marks >= 50){
}
```

---

### 4. Deep Nesting

Avoid writing many levels of nested `if` statements.

Instead, simplify conditions whenever possible.

---

# Interview Questions & Answers

## 1. What is an if statement?

**Answer**

An `if` statement executes a block of code only when a specified condition evaluates to `true`.

---

## 2. What is the difference between `if` and `if-else`?

**Answer**

- `if` executes code only when the condition is true.
- `if-else` executes one block when the condition is true and another block when it is false.

---

## 3. When should you use an else-if ladder?

**Answer**

Use an `else-if` ladder when multiple mutually exclusive conditions need to be checked. Once one condition is true, the remaining conditions are skipped.

---

## 4. What is a nested if statement?

**Answer**

A nested `if` is an `if` statement inside another `if` statement. It is useful when one condition depends on another.

---

## 5. Can an if statement exist without an else block?

**Answer**

Yes. The `else` block is optional.

Example:

```apex
if(isActive){
    System.debug('User is Active');
}
```

---

## 6. What data type should an if condition return?

**Answer**

The condition must evaluate to a `Boolean` (`true` or `false`).

Example:

```apex
if(age >= 18){
}
```

---

## 7. Which is better: multiple if statements or an else-if ladder?

**Answer**

If the conditions are related and only one block should execute, an `else-if` ladder is preferred because it avoids unnecessary condition checks.

---

## 8. What happens if none of the conditions in an else-if ladder are true?

**Answer**

If an `else` block is present, it executes. Otherwise, no block is executed.

---

## 9. Can logical operators be used inside an if statement?

**Answer**

Yes. Logical operators such as `&&`, `||`, and `!` are commonly used to combine multiple conditions.

Example:

```apex
if(age >= 18 && hasLicense){
    System.debug('Eligible');
}
```

---

## 10. When should you use a switch statement instead of if-else?

**Answer**

Use a `switch` statement when comparing the same variable against multiple constant values. It makes the code cleaner and more readable than a long `else-if` ladder.

---

# Practice Questions

## Basic

1. Check whether a number is positive or negative.
2. Check whether a student has passed or failed.
3. Determine whether a person is eligible to vote.
4. Check whether a number is even or odd.
5. Find the greater of two numbers.

---

## Intermediate

6. Assign grades (A, B, C, Fail) based on marks.
7. Check whether a user is active before allowing login.
8. Validate that an Opportunity amount is greater than ₹50,000 before applying a discount.
9. Check whether a Case should be escalated based on Priority and Status.
10. Determine whether an Account is a Customer, Partner, or Prospect.

---

## Salesforce Scenarios

11. Prevent a Case from being closed if its Priority is `High`.
12. Display a warning if an Opportunity amount exceeds ₹1,00,000.
13. Allow record updates only if the current user is active.
14. Validate that an Account has a Phone number before creating a Contact.
15. Apply different discount percentages based on Opportunity Amount.

---

# Key Takeaways

- `if` executes code only when a condition is true.
- `if-else` provides an alternative path when the condition is false.
- `else-if` is ideal for checking multiple related conditions.
- Nested `if` statements should be used only when necessary.
- Conditions must evaluate to a Boolean value.
- Proper formatting and indentation improve readability.

---

# Summary

The `if-else` statement is one of the most important control structures in Apex. It allows developers to implement business rules, validations, and decision-making logic by executing different blocks of code based on conditions. Mastering `if`, `if-else`, `else-if`, and nested `if` statements is essential before moving on to topics such as **Switch Statements**, **Loops**, and **Triggers**, where conditional logic is used extensively.
