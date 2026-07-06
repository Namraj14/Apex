# Loops in Apex

Loops are control statements that allow a block of code to execute repeatedly until a specified condition becomes false. They help eliminate repetitive code, making programs shorter, cleaner, and easier to maintain.

Loops are widely used in Apex for processing collections, records returned from SOQL queries, and performing repetitive business logic.

---

# Table of Contents

- What are Loops?
- Why Do We Need Loops?
- Types of Loops
- for Loop
- Enhanced for Loop (for-each)

---

# What are Loops?

A **loop** repeatedly executes a block of code as long as a given condition is satisfied.

Instead of writing the same statement multiple times, a loop allows you to write it once and execute it many times.

### Without a Loop

```apex
System.debug(1);
System.debug(2);
System.debug(3);
System.debug(4);
System.debug(5);
```

---

### With a Loop

```apex
for(Integer i = 1; i <= 5; i++){
    System.debug(i);
}
```

Both produce the same output, but the loop is much shorter and easier to maintain.

---

# Why Do We Need Loops?

Loops help us:

- Process multiple records.
- Iterate through collections.
- Avoid duplicate code.
- Improve maintainability.
- Perform repetitive calculations.
- Execute business logic for each record.

Without loops, processing 200 records in a trigger would require writing the same code 200 times.

---

# Types of Loops in Apex

Apex supports four looping constructs.

1. `for`
2. Enhanced `for` (for-each)
3. `while`
4. `do-while`

---

# for Loop

The `for` loop is the most commonly used loop in Apex.

It is best suited when the number of iterations is known.

### Syntax

```apex
for(initialization; condition; increment){
    // Code
}
```

### Components

- **Initialization** – Executes once before the loop starts.
- **Condition** – Checked before every iteration.
- **Increment/Decrement** – Executes after each iteration.

---

### Example 1

```apex
for(Integer i = 1; i <= 5; i++){

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

---

### Example 2 – Print Even Numbers

```apex
for(Integer i = 2; i <= 10; i += 2){

    System.debug(i);

}
```

**Output**

```
2
4
6
8
10
```

---

### Example 3 – Reverse Counting

```apex
for(Integer i = 5; i >= 1; i--){

    System.debug(i);

}
```

**Output**

```
5
4
3
2
1
```

---

### Example 4 – Sum of Numbers

```apex
Integer sum = 0;

for(Integer i = 1; i <= 5; i++){

    sum += i;

}

System.debug(sum);
```

**Output**

```
15
```

---

# Loop Variables

The loop variable controls how many times the loop executes.

Example:

```apex
for(Integer counter = 1; counter <= 10; counter++){

}
```

Here:

- `counter = 1` → Starting value
- `counter <= 10` → Loop condition
- `counter++` → Increment after every iteration

---

# Nested for Loop

A loop inside another loop is called a nested loop.

### Example

```apex
for(Integer i = 1; i <= 3; i++){

    for(Integer j = 1; j <= 2; j++){

        System.debug('i = ' + i + ', j = ' + j);

    }

}
```

**Output**

```
i = 1, j = 1
i = 1, j = 2
i = 2, j = 1
i = 2, j = 2
i = 3, j = 1
i = 3, j = 2
```

---

# Enhanced for Loop (for-each)

The enhanced `for` loop is used to iterate through collections such as Lists, Sets, and arrays.

It is cleaner and easier to read than a traditional `for` loop.

### Syntax

```apex
for(DataType variable : collection){

    // Code

}
```

---

### Example 1 – List of Integers

```apex
List<Integer> numbers = new List<Integer>{10,20,30,40};

for(Integer number : numbers){

    System.debug(number);

}
```

**Output**

```
10
20
30
40
```

---

### Example 2 – List of Strings

```apex
List<String> cities = new List<String>{

    'Mumbai',
    'Delhi',
    'Bangalore'

};

for(String city : cities){

    System.debug(city);

}
```

---

### Example 3 – List of Accounts

```apex
List<Account> accounts = [

    SELECT Name

    FROM Account

    LIMIT 5

];

for(Account acc : accounts){

    System.debug(acc.Name);

}
```

This is one of the most common loop patterns in Apex development.

---

# Traditional for vs Enhanced for

| Traditional for | Enhanced for |
|-----------------|--------------|
| Uses an index | No index required |
| Better when index is needed | Better for simple iteration |
| Slightly more verbose | Cleaner and easier to read |
| Useful for arrays and Lists | Best for Lists, Sets, and arrays |

---

# Real-World Salesforce Examples

## Process Accounts

```apex
List<Account> accounts = [

    SELECT Name

    FROM Account

];

for(Account acc : accounts){

    System.debug(acc.Name);

}
```

---

## Update Opportunity Amount

```apex
for(Opportunity opp : opportunityList){

    opp.Amount += 1000;

}
```

---

## Calculate Total Quantity

```apex
Integer total = 0;

for(OrderItem item : orderItems){

    total += item.Quantity;

}
```

---

**End of Part 1**

The next part will cover:

- `while` Loop
- `do-while` Loop
- `break`
- `continue`
- Infinite Loops
- Loop Control Statements
- More Salesforce examples
