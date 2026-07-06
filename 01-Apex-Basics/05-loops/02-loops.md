# while Loop

The `while` loop executes a block of code **as long as the specified condition is true**.

Unlike a `for` loop, the initialization and increment/decrement are written separately.

A `while` loop is useful when the number of iterations is **not known in advance**.

---

## Syntax

```apex
while(condition){

    // Code

}
```

---

## Example 1

```apex
Integer i = 1;

while(i <= 5){

    System.debug(i);

    i++;

}
```

**Output**

```
1
2
3
4
5
```

---

## Example 2 – Sum of Numbers

```apex
Integer number = 1;
Integer sum = 0;

while(number <= 5){

    sum += number;

    number++;

}

System.debug(sum);
```

**Output**

```
15
```

---

## Example 3 – Countdown

```apex
Integer count = 5;

while(count > 0){

    System.debug(count);

    count--;

}
```

---

# When Should You Use a while Loop?

Use a `while` loop when:

- The number of iterations is unknown.
- Execution depends on a condition.
- Reading data until a condition changes.
- Waiting until a process completes.

---

# do-while Loop

A `do-while` loop executes the code block **at least once**, even if the condition is false.

This is because the condition is checked **after** the loop body executes.

---

## Syntax

```apex
do{

    // Code

}
while(condition);
```

---

## Example 1

```apex
Integer i = 1;

do{

    System.debug(i);

    i++;

}
while(i <= 5);
```

**Output**

```
1
2
3
4
5
```

---

## Example 2

```apex
Integer number = 10;

do{

    System.debug(number);

}
while(number < 5);
```

**Output**

```
10
```

Although the condition is false, the loop executes once.

---

# while vs do-while

| while | do-while |
|--------|-----------|
| Condition checked first | Condition checked last |
| May execute zero times | Executes at least once |
| Most commonly used | Less commonly used |

---

# break Statement

The `break` statement immediately terminates the loop.

Control moves to the first statement after the loop.

---

## Example

```apex
for(Integer i = 1; i <= 10; i++){

    if(i == 6){

        break;

    }

    System.debug(i);

}
```

**Output**

```
1
2
3
4
5
```

The loop stops as soon as `i` becomes `6`.

---

## Salesforce Example

```apex
for(Account acc : accounts){

    if(acc.Name == 'ABC Pvt Ltd'){

        System.debug('Account Found');

        break;

    }

}
```

Once the required Account is found, there is no need to continue processing.

---

# continue Statement

The `continue` statement skips the current iteration and immediately moves to the next iteration.

---

## Example

```apex
for(Integer i = 1; i <= 5; i++){

    if(i == 3){

        continue;

    }

    System.debug(i);

}
```

**Output**

```
1
2
4
5
```

---

## Salesforce Example

```apex
for(Account acc : accounts){

    if(acc.Phone == null){

        continue;

    }

    System.debug(acc.Name);

}
```

Accounts without a phone number are skipped.

---

# Infinite Loop

An infinite loop is a loop whose condition never becomes false.

---

## Example

```apex
while(true){

    System.debug('Running');

}
```

This loop never ends.

---

### Another Example

```apex
Integer i = 1;

while(i <= 5){

    System.debug(i);

}
```

Since `i` is never incremented, the condition always remains true.

---

# Avoid Infinite Loops

Always ensure that:

- The loop condition eventually becomes false.
- Loop variables are updated correctly.
- Exit conditions are clearly defined.

---

# Loop Control Statements

| Statement | Purpose |
|-----------|----------|
| `break` | Terminates the loop completely |
| `continue` | Skips the current iteration |
| `return` | Exits the current method |

---

# Nested Loops

A nested loop is a loop inside another loop.

They are useful for:

- Matrix operations
- Comparing two collections
- Pattern generation
- Complex business logic

---

## Example

```apex
for(Integer i = 1; i <= 3; i++){

    for(Integer j = 1; j <= 3; j++){

        System.debug(i + ' ' + j);

    }

}
```

---

# Real-World Salesforce Examples

## Update Accounts

```apex
for(Account acc : accountList){

    acc.Rating = 'Hot';

}

update accountList;
```

---

## Validate Contacts

```apex
for(Contact con : contacts){

    if(con.Email == null){

        continue;

    }

    System.debug(con.Email);

}
```

---

## Count High Priority Cases

```apex
Integer count = 0;

for(Case c : caseList){

    if(c.Priority == 'High'){

        count++;

    }

}

System.debug(count);
```

---

## Find Specific Opportunity

```apex
for(Opportunity opp : opportunities){

    if(opp.StageName == 'Closed Won'){

        System.debug(opp.Name);

        break;

    }

}
```

---

## Process Orders

```apex
for(Order ord : orders){

    if(ord.Status != 'Activated'){

        continue;

    }

    System.debug(ord.OrderNumber);

}
```

---

**End of Part 2**

The final part will cover:

- Governor Limits and Loops
- Best Practices
- Common Mistakes
- Interview Questions & Answers
- Practice Questions
- Key Takeaways
- Summary
