/*
===============================================================================
                                VARIABLES IN APEX
===============================================================================

A variable is a named memory location used to store data. The value stored in a
variable can change during program execution unless it is declared as final.

Syntax:
    DataType variableName = value;

Example:
    Integer age = 25;
    String name = 'John';

===============================================================================
WHY DO WE NEED VARIABLES?
===============================================================================

Variables allow us to:
- Store user input.
- Store values from SOQL queries.
- Perform calculations.
- Pass data between methods.
- Store records and collections.
- Make code reusable and readable.

===============================================================================
VARIABLE DECLARATION
===============================================================================

Declaration means creating a variable by specifying its data type and name.

Example:

Integer age;
String firstName;
Boolean isActive;

At this stage, memory is allocated but no value is assigned.

===============================================================================
VARIABLE INITIALIZATION
===============================================================================

Initialization means assigning the first value to a variable.

Example:

Integer age = 25;
String company = 'Salesforce';
Boolean isActive = true;

===============================================================================
VARIABLE ASSIGNMENT
===============================================================================

A variable can be assigned a new value after initialization.

Example:

Integer count = 5;
count = 10;

System.debug(count); // 10

===============================================================================
DECLARATION VS INITIALIZATION
===============================================================================

Declaration

Integer age;

Initialization

age = 25;

Declaration + Initialization

Integer age = 25;

===============================================================================
MULTIPLE VARIABLE DECLARATION
===============================================================================

Multiple variables of the same type can be declared together.

Example:

Integer x, y, z;

They can also be initialized separately.

x = 10;
y = 20;
z = 30;

===============================================================================
REASSIGNING VARIABLES
===============================================================================

Variables can hold different values during execution.

Example:

String status = 'Open';

status = 'Closed';

System.debug(status);

Output:
Closed

===============================================================================
LOCAL VARIABLES
===============================================================================

A local variable is declared inside a method, constructor, loop, or block.

Characteristics

✔ Accessible only inside that block.
✔ Created when execution enters the block.
✔ Destroyed when execution leaves the block.

Example:

public static void demo(){

    Integer count = 5;

    System.debug(count);

}

count cannot be accessed outside the method.

===============================================================================
INSTANCE VARIABLES
===============================================================================

Instance variables belong to an object.

Each object gets its own copy.

Example:

public class Employee{

    String name;
    Integer age;

}

Employee e1 = new Employee();
Employee e2 = new Employee();

e1.name = 'John';
e2.name = 'Alex';

Both objects store different values.

===============================================================================
STATIC VARIABLES
===============================================================================

Static variables belong to the class rather than individual objects.

Only one copy exists.

Example:

public class Company{

    static Integer employeeCount = 0;

}

Access

Company.employeeCount

Static variables are commonly used for:

- Counters
- Constants
- Utility classes
- Preventing recursion in triggers

===============================================================================
FINAL VARIABLES
===============================================================================

A final variable can be assigned only once.

Example:

final Integer MAX_LIMIT = 100;

MAX_LIMIT = 200;   // Error

Useful for constants.

===============================================================================
VARIABLE SCOPE
===============================================================================

Scope defines where a variable can be accessed.

Types

1. Local Scope

Inside a method or block.

2. Instance Scope

Accessible throughout the object.

3. Static Scope

Accessible using the class name.

Example

public class Demo{

    static Integer a;

    Integer b;

    public void test(){

        Integer c;

    }

}

a → Static Scope

b → Instance Scope

c → Local Scope

===============================================================================
VARIABLE LIFETIME
===============================================================================

Local Variable

Created when method starts.
Destroyed when method ends.

Instance Variable

Created when object is created.
Destroyed when object is garbage collected.

Static Variable

Created when class loads.
Destroyed when transaction ends.

===============================================================================
DEFAULT VALUES
===============================================================================

Apex automatically assigns default values to instance variables.

String      -> null

Integer     -> null

Decimal     -> null

Boolean     -> false

Date        -> null

Datetime    -> null

List        -> null

Set         -> null

Map         -> null

Object      -> null

Local variables must be initialized before use.

Example

public static void test(){

    Integer number;

    System.debug(number);

}

Compilation Error

Variable does not exist or may not have been initialized.

===============================================================================
NULL VALUES
===============================================================================

A variable with no assigned object reference contains null.

Example

String city = null;

Always perform null checks.

Example

if(city != null){

    System.debug(city);

}

===============================================================================
PRIMITIVE VARIABLES
===============================================================================

Primitive variables store simple values.

Examples

Integer

Decimal

Double

Boolean

String

Date

Datetime

Time

Id

Blob

Example

Integer age = 25;

===============================================================================
REFERENCE VARIABLES
===============================================================================

Reference variables store the address of an object.

Examples

Account

Contact

Opportunity

Custom Classes

Lists

Sets

Maps

Example

Account acc = new Account();

List<Account> accounts = new List<Account>();

===============================================================================
VARIABLE NAMING RULES
===============================================================================

A variable:

✔ Can contain letters

✔ Can contain numbers

✔ Can contain underscores

✔ Cannot begin with a number

✔ Cannot contain spaces

✔ Cannot use reserved keywords

Valid

customerName

student1

_total

Invalid

1name

first name

class

if

===============================================================================
NAMING CONVENTIONS
===============================================================================

Use meaningful names.

Good

Integer employeeCount;

Decimal totalAmount;

Boolean isActive;

String accountName;

Bad

Integer a;

Integer x;

String temp;

===============================================================================
MEMORY ALLOCATION
===============================================================================

Primitive Variable

Stores value directly.

Example

Integer age = 25;

Reference Variable

Stores memory reference.

Example

Account acc = new Account();

===============================================================================
COMMON MISTAKES
===============================================================================

❌ Using variables before initialization

❌ Poor variable names

❌ Ignoring null values

❌ Declaring unnecessary variables

❌ Reusing variables for unrelated purposes

❌ Declaring variables inside loops unnecessarily

===============================================================================
BEST PRACTICES
===============================================================================

✔ Use descriptive names.

✔ Keep variable scope as small as possible.

✔ Initialize variables whenever possible.

✔ Check for null before use.

✔ Use final for constants.

✔ Avoid unnecessary global variables.

✔ Follow camelCase naming convention.

✔ Avoid magic values. Store them in variables or constants.

===============================================================================
INTERVIEW QUESTIONS
===============================================================================

1. What is a variable?

2. What is variable declaration?

3. What is variable initialization?

4. Difference between declaration and initialization?

5. What is variable scope?

6. What is variable lifetime?

7. Difference between local and instance variables?

8. Difference between instance and static variables?

9. What are final variables?

10. What are default values in Apex?

11. Can local variables have default values?

12. Why should null checks be performed?

13. What are primitive variables?

14. What are reference variables?

15. What are the rules for naming variables?

===============================================================================
SUMMARY
===============================================================================

Variables are fundamental building blocks of Apex programs. They store data,
control program flow, and make applications dynamic. Understanding declaration,
initialization, scope, lifetime, static variables, final variables, default
values, and naming conventions is essential before learning data types,
collections, classes, SOQL, and DML.
*/
