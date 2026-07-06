# Object-Oriented Programming (OOP) in Apex

Object-Oriented Programming (OOP) is a programming paradigm based on the concept of **objects** and **classes**. It helps developers organize code into reusable, maintainable, and scalable components.

Apex is a fully object-oriented programming language, and understanding OOP is essential for building enterprise-grade Salesforce applications.

In this module, you'll learn the core principles of OOP and how they are implemented in Apex.

---

# Table of Contents

- What is OOP?
- Why Do We Need OOP?
- Benefits of OOP
- Four Pillars of OOP
- OOP in Apex
- Module Structure
- Learning Outcomes

---

# What is OOP?

Object-Oriented Programming (OOP) is a way of designing software by organizing data and behavior into **objects**.

An object represents a real-world entity.

Examples:

- Customer
- Account
- Employee
- Order
- Product
- Opportunity

Each object contains:

- **Properties (Fields)** → Information about the object.
- **Methods** → Actions the object can perform.

For example:

**Employee**

Properties

- Name
- Age
- Salary

Methods

- Work()
- ApplyLeave()
- CalculateBonus()

---

# Why Do We Need OOP?

Without OOP:

- Code becomes repetitive.
- Applications become difficult to maintain.
- Reusing logic becomes challenging.
- Large projects become hard to manage.

OOP helps us:

- Reuse code.
- Improve maintainability.
- Organize business logic.
- Build scalable applications.
- Reduce duplication.

---

# Benefits of OOP

- Code Reusability
- Better Maintainability
- Easier Debugging
- Better Organization
- Scalability
- Modularity
- Improved Security
- Real-World Modeling

---

# Four Pillars of OOP

Object-Oriented Programming is based on four main principles.

## 1. Encapsulation

Combining data and methods into a single unit while controlling access to the data.

Example:

An ATM machine hides its internal implementation while exposing only the required operations.

Covered in:

```
Classes.md
AccessModifiers.md
```

---

## 2. Inheritance

Allows one class to inherit properties and methods from another class.

Example:

```
Vehicle

↓

Car
```

Covered in:

```
Inheritance.md
```

---

## 3. Polymorphism

Allows the same method to behave differently based on the object or parameters.

Example:

```
calculateArea()

↓

Circle

Rectangle
```

Covered in:

```
Polymorphism.md
```

---

## 4. Abstraction

Hides implementation details and exposes only essential functionality.

Example:

You can drive a car without knowing how the engine works internally.

Covered in:

```
Abstraction.md
Interfaces.md
```

---

# OOP in Apex

Apex supports all major object-oriented concepts.

These include:

- Classes
- Objects
- Constructors
- Methods
- Inheritance
- Polymorphism
- Abstraction
- Interfaces
- Enums
- Access Modifiers
- Static Members
- this Keyword

---

# Module Structure

```
02-OOP/

├── README.md
├── Classes.md
├── Constructors.md
├── Static.md
├── ThisKeyword.md
├── Inheritance.md
├── Polymorphism.md
├── Abstraction.md
├── Interfaces.md
├── Enums.md
├── AccessModifiers.md
└── InterviewQuestions.md
```

---

# Learning Outcomes

After completing this module, you will be able to:

- Understand object-oriented programming concepts.
- Create and use classes and objects.
- Write constructors.
- Use static members effectively.
- Understand the `this` keyword.
- Implement inheritance.
- Apply polymorphism.
- Design abstract classes and interfaces.
- Use enums.
- Choose appropriate access modifiers.
- Write reusable and maintainable Apex code.

---

# Summary

Object-Oriented Programming is the foundation of Apex development. Nearly every Apex component—classes, triggers, controllers, services, batch classes, and integrations—is built using OOP principles. Mastering this module will prepare you for advanced topics such as Collections, SOQL, Triggers, Asynchronous Apex, Design Patterns, and Enterprise Application Architecture.
