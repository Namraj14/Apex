# Loops and Governor Limits

Since Apex runs on Salesforce's multi-tenant platform, every transaction is subject to **Governor Limits**. Poorly written loops can quickly consume these limits and cause runtime exceptions.

Understanding how loops interact with SOQL and DML is essential for writing scalable Apex code.

---

## Never Write SOQL Inside a Loop

❌ Incorrect

```apex
for(Account acc : accountList){

    List<Contact> contacts = [
        SELECT Id, Name
        FROM Contact
        WHERE AccountId = :acc.Id
    ];

}
```

### Why is this bad?

If `accountList` contains 200 records, the query executes **200 times**, quickly exceeding the SOQL governor limit.

---

### Correct Approach

```apex
Set<Id> accountIds = new Set<Id>();

for(Account acc : accountList){

    accountIds.add(acc.Id);

}

List<Contact> contacts = [
    SELECT Id, Name, AccountId
    FROM Contact
    WHERE AccountId IN :accountIds
];
```

Only **one SOQL query** is executed.

---

# Never Perform DML Inside a Loop

❌ Incorrect

```apex
for(Account acc : accountList){

    acc.Rating = 'Hot';

    update acc;

}
```

If there are 200 records, Salesforce performs **200 DML operations**.

---

### Correct Approach

```apex
for(Account acc : accountList){

    acc.Rating = 'Hot';

}

update accountList;
```

Only **one DML statement** is executed.

---

# Bulkification

Bulkification means writing Apex code that can process multiple records efficiently in a single execution.

Loops play a major role in bulkified code.

### Good Example

```apex
List<Account> accountsToUpdate = new List<Account>();

for(Account acc : accountList){

    acc.Rating = 'Warm';

    accountsToUpdate.add(acc);

}

if(!accountsToUpdate.isEmpty()){

    update accountsToUpdate;

}
```

---

# Choosing the Right Loop

| Loop | Best Used For |
|------|---------------|
| `for` | Known number of iterations |
| Enhanced `for` | Iterating Lists, Sets, Arrays |
| `while` | Unknown number of iterations |
| `do-while` | Code should execute at least once |

---

# Best Practices

- Use the enhanced `for` loop when iterating through collections.
- Use meaningful loop variable names.
- Keep loop bodies small and readable.
- Avoid nested loops unless absolutely necessary.
- Never perform SOQL inside loops.
- Never perform DML inside loops.
- Bulkify trigger logic.
- Use `break` when further iteration is unnecessary.
- Use `continue` to skip unwanted records.
- Update collections outside the loop whenever possible.

---

# Common Mistakes

## 1. SOQL Inside Loop

❌

```apex
for(Account acc : accounts){

    Contact con = [
        SELECT Id
        FROM Contact
        WHERE AccountId = :acc.Id
        LIMIT 1
    ];

}
```

---

## 2. DML Inside Loop

❌

```apex
for(Account acc : accounts){

    update acc;

}
```

---

## 3. Forgetting to Increment

```apex
Integer i = 1;

while(i <= 10){

    System.debug(i);

}
```

The loop never ends because `i` is not incremented.

---

## 4. Using Nested Loops Unnecessarily

Nested loops increase CPU time and can reduce performance.

Always look for ways to use `Map`, `Set`, or bulk queries instead.

---

## 5. Modifying Collections While Iterating

Be careful when adding or removing elements from a collection while looping through it, as it can lead to unexpected behavior or exceptions.

---

# Interview Questions & Answers

## 1. What is a loop?

**Answer**

A loop repeatedly executes a block of code until a specified condition becomes false.

---

## 2. What types of loops are available in Apex?

**Answer**

Apex supports four types of loops:

- `for`
- Enhanced `for` (for-each)
- `while`
- `do-while`

---

## 3. What is the difference between a `for` loop and an enhanced `for` loop?

**Answer**

A `for` loop uses an index and is useful when you need to control the iteration manually.

An enhanced `for` loop is used to iterate directly over collections without an index, making the code simpler and more readable.

---

## 4. What is the difference between `while` and `do-while`?

**Answer**

- A `while` loop checks the condition before executing the loop body.
- A `do-while` loop executes the loop body first and checks the condition afterward, ensuring the loop runs at least once.

---

## 5. What is the purpose of the `break` statement?

**Answer**

The `break` statement immediately exits the loop and transfers control to the first statement after the loop.

---

## 6. What is the purpose of the `continue` statement?

**Answer**

The `continue` statement skips the remaining statements in the current iteration and proceeds to the next iteration of the loop.

---

## 7. What is an infinite loop?

**Answer**

An infinite loop is a loop whose condition never becomes false, causing it to execute indefinitely.

Example:

```apex
while(true){

}
```

---

## 8. Why should SOQL not be written inside loops?

**Answer**

Writing SOQL inside loops can exceed Salesforce's governor limits. Instead, collect the required IDs and execute a single bulk query outside the loop.

---

## 9. Why should DML not be written inside loops?

**Answer**

Performing DML inside loops results in multiple DML statements, which can exceed governor limits and reduce performance. Instead, collect records and perform a single bulk DML operation.

---

## 10. What is bulkification?

**Answer**

Bulkification is the practice of writing Apex code that processes multiple records efficiently in a single execution while respecting governor limits.

---

## 11. Which loop is most commonly used in Apex?

**Answer**

The enhanced `for` loop is most commonly used because Apex frequently works with collections such as Lists, Sets, and query results.

---

## 12. Can loops be nested in Apex?

**Answer**

Yes. Apex allows nested loops, but they should be used carefully because they can impact performance and CPU time.

---

## 13. Which loop should you use when the number of iterations is unknown?

**Answer**

Use a `while` loop because it continues until a specified condition becomes false.

---

## 14. Which loop guarantees at least one execution?

**Answer**

A `do-while` loop always executes its body at least once because the condition is checked after the loop body.

---

## 15. What are the best practices for writing loops in Apex?

**Answer**

- Bulkify your code.
- Avoid SOQL and DML inside loops.
- Use enhanced `for` loops for collections.
- Keep loop logic simple.
- Avoid unnecessary nested loops.
- Use `break` and `continue` appropriately.

---

# Practice Questions

## Basic

1. Print numbers from 1 to 20 using a `for` loop.
2. Print numbers from 20 to 1 using a `while` loop.
3. Print all even numbers between 1 and 50.
4. Find the sum of the first 100 natural numbers.
5. Print the multiplication table of a given number.

---

## Intermediate

6. Reverse a string using a loop.
7. Count the number of vowels in a string.
8. Find the largest number in a list.
9. Calculate the factorial of a number.
10. Generate the Fibonacci sequence.

---

## Salesforce Scenarios

11. Update the `Rating` of all Accounts in a list.
12. Count all `High` priority Cases.
13. Skip Contacts without an email address.
14. Stop processing once a `Closed Won` Opportunity is found.
15. Retrieve all Contact names for a list of Account IDs without writing SOQL inside a loop.

---

# Key Takeaways

- Loops are used to execute code repeatedly.
- Apex supports `for`, enhanced `for`, `while`, and `do-while` loops.
- Enhanced `for` loops are preferred for iterating over collections.
- `break` exits a loop immediately.
- `continue` skips the current iteration.
- Never write SOQL or DML statements inside loops.
- Bulkification is essential for writing efficient Apex code.
- Proper loop design improves performance and ensures compliance with Salesforce governor limits.

---

# Summary

Loops are an essential part of Apex programming and are used extensively to process collections, query results, and business logic efficiently. Understanding the differences between `for`, enhanced `for`, `while`, and `do-while` loops, along with loop control statements like `break` and `continue`, is crucial for writing clean and scalable Apex code. Following best practices such as avoiding SOQL and DML inside loops and bulkifying logic helps ensure your code performs well within Salesforce governor limits.
