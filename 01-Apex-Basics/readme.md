# Apex Basics

Welcome to the **Apex Basics** section of this repository. This module is designed for beginners who want to learn Apex from scratch and build a strong foundation before moving to advanced Salesforce development topics like SOQL, DML, Triggers, Asynchronous Apex, Integrations, and Lightning Web Components (LWC).

---

# What is Apex?

**Apex** is a strongly typed, object-oriented programming language developed by Salesforce. It allows developers to execute flow and transaction control statements on the Salesforce Platform Server in conjunction with API calls.

In simple words, Apex is Salesforce's backend programming language. It is used to implement business logic that cannot be achieved using declarative tools like Flows, Validation Rules, Process Builder, or Formula Fields.

Apex is similar to Java in syntax but is specifically designed for Salesforce and its multi-tenant architecture.

---

# Why Do We Need Apex?

Salesforce provides many declarative tools that allow administrators to automate business processes without writing code. However, there are situations where declarative tools are not enough.

Apex is used when:

- Complex business logic needs to be implemented.
- Multiple objects need to be processed together.
- External systems need to be integrated using REST or SOAP APIs.
- Custom automation is required.
- Large amounts of data need to be processed.
- Scheduled or asynchronous processing is required.
- Custom web services need to be exposed.

---

# Features of Apex

- Object-Oriented Programming Language
- Strongly Typed Language
- Case-Insensitive Keywords
- Runs on Salesforce Servers
- Database Integrated
- Supports Exception Handling
- Supports Collections
- Supports SOQL and SOSL
- Supports DML Operations
- Supports Asynchronous Programming
- Governor Limit Aware
- Supports Triggers
- Supports Web Services (REST & SOAP)
- Automatic Memory Management

---

# Where Does Apex Run?

Unlike Java or C#, Apex does **not** run on your local computer.

It executes entirely on Salesforce's cloud servers.

```
Developer → Deploy Apex → Salesforce Server → Execution → Response
```

Because Apex runs on Salesforce servers:

- No JVM installation is required.
- No manual memory allocation.
- Salesforce automatically manages resources.
- Every transaction follows governor limits.

---

# Apex Execution Flow

```
User Action
      │
      ▼
Validation Rules
      │
      ▼
Before Trigger
      │
      ▼
Before Save Flow
      │
      ▼
Database Save (Not Committed)
      │
      ▼
After Trigger
      │
      ▼
After Save Flow
      │
      ▼
Assignment Rules
      │
      ▼
Auto Response Rules
      │
      ▼
Workflow Rules
      │
      ▼
Processes / Record Triggered Flows
      │
      ▼
Commit
```

> **Note:** Salesforce follows a detailed Order of Execution. The above is a simplified view to understand where Apex fits into a transaction.

---

# Compilation Process

When Apex code is saved:

1. The compiler checks syntax.
2. It verifies variable types.
3. It validates references to Salesforce objects and fields.
4. It checks method signatures.
5. If successful, the code is compiled and stored on Salesforce servers.

Unlike Java, developers do not create executable files (.class or .jar).

---

# Execution Context

An **execution context** represents a single transaction in Salesforce.

Examples include:

- Clicking a button
- Saving a record
- Running a Flow
- Executing a Trigger
- Calling a REST API
- Running Anonymous Apex
- Executing a Batch Job

Each execution context has its own:

- Governor Limits
- Heap Memory
- CPU Time
- DML Limits
- SOQL Limits

---

# Is Apex Object-Oriented?

Yes.

Apex supports major Object-Oriented Programming concepts:

- Classes
- Objects
- Encapsulation
- Inheritance
- Polymorphism
- Abstraction
- Interfaces
- Constructors
- Method Overloading

---

# Is Apex Strongly Typed?

Yes.

Every variable must have a data type.

```apex
Integer age = 25;

String name = 'John';

Boolean isActive = true;
```

This helps catch errors during compilation.

---

# Is Apex Case Sensitive?

Yes.

Variable names, class names, and method names are case-sensitive.

```apex
String name = 'John';

String Name = 'Alex';
```

These are two different variables.

However, Apex keywords are case-insensitive.

```apex
if

IF

If

iF
```

All are treated as the `if` keyword.

---

# Apex Naming Conventions

### Class

```apex
AccountService
```

Use PascalCase.

---

### Method

```apex
calculateDiscount()
```

Use camelCase.

---

### Variables

```apex
customerName
```

Use camelCase.

---

### Constants

```apex
MAX_LIMIT
```

Usually written in uppercase.

---

### Boolean Variables

Prefer names that read naturally.

```apex
isActive

hasPermission

canEdit
```

---

# Reserved Keywords

Some words cannot be used as variable names because they are reserved by Apex.

Examples:

```text
if
else
for
while
switch
return
class
public
private
static
void
new
try
catch
```

---

# Comments in Apex

## Single Line

```apex
// This is a single-line comment
```

---

## Multi-Line

```apex
/*
This is
a multi-line
comment.
*/
```

---

## Documentation Comment

```apex
/**
 * Calculates total amount.
 */
```

---

# Hello World Example

```apex
public class HelloWorld {

    public static void printMessage() {

        System.debug('Hello, World!');

    }

}
```

Output

```
Hello, World!
```

---

# Where Can We Write Apex?

You can write Apex in several places:

- Apex Classes
- Apex Triggers
- Anonymous Apex Window
- Execute Anonymous in VS Code
- Batch Classes
- Queueable Classes
- Future Methods
- Schedulable Classes
- Invocable Classes
- REST Resources
- SOAP Web Services

---

# Tools Used for Apex Development

- Salesforce Developer Org
- VS Code
- Salesforce CLI
- Salesforce Extensions Pack
- Developer Console
- Workbench
- Git
- GitHub

---

# Best Practices

- Write bulkified code.
- Avoid SOQL inside loops.
- Avoid DML inside loops.
- Handle exceptions properly.
- Follow naming conventions.
- Keep methods small and reusable.
- Write test classes for every Apex class.
- Avoid hardcoding IDs.
- Use collections efficiently.
- Respect governor limits.
- Add meaningful comments where necessary.

---

# Common Beginner Mistakes

- Forgetting governor limits.
- Writing SOQL inside loops.
- Performing DML inside loops.
- Not checking for null values.
- Using incorrect data types.
- Ignoring exception handling.
- Writing non-bulkified code.
- Hardcoding Salesforce IDs.
- Creating very large methods.

---

# Folder Structure

```text
01-Apex-Basics/
│── README.md
│── Variables.cls
│── DataTypes.cls
│── Operators.cls
│── IfElse.cls
│── Switch.cls
│── Loops.cls
│── Methods.cls
│── Practice.cls
└── InterviewQuestions.md
```

---

# Learning Outcomes

After completing this module, you will be able to:

- Understand what Apex is and why it is used.
- Explain how Apex executes on the Salesforce Platform.
- Write simple Apex programs.
- Declare and use variables correctly.
- Work with Apex data types.
- Use operators effectively.
- Implement decision-making using `if-else` and `switch`.
- Write loops for repetitive tasks.
- Create reusable methods.
- Follow Apex coding best practices.

---

# Next Files in This Module

| File | Description |
|------|-------------|
| `Variables.cls` | Learn everything about variables in Apex. |
| `DataTypes.cls` | Understand primitive and non-primitive data types. |
| `Operators.cls` | Learn arithmetic, logical, comparison, assignment, and conditional operators. |
| `IfElse.cls` | Learn conditional statements and branching logic. |
| `Switch.cls` | Learn switch statements with real-world examples. |
| `Loops.cls` | Master all loop types and iteration techniques. |
| `Methods.cls` | Learn how to create and use methods effectively. |
| `Practice.cls` | Solve hands-on Apex practice programs. |
| `InterviewQuestions.md` | Practice commonly asked Apex interview questions. |

---

# Summary

Apex is the core backend programming language of the Salesforce Platform. It enables developers to implement custom business logic, automate complex processes, integrate with external systems, and build scalable enterprise applications. A solid understanding of Apex fundamentals—including variables, data types, operators, control statements, loops, and methods—is essential before moving on to advanced topics such as SOQL, DML, Triggers, Asynchronous Apex, and Integrations.

This module lays that foundation and prepares you for the rest of the repository.
