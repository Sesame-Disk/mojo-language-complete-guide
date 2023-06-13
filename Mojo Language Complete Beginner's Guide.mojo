def bookstore_management(new_books, sold_books):
    # Declaring an immutable variable 'total_books' with 'let'
    let total_books = new_books
    print("Total books:")
    print(total_books)
    # Uncommenting the next line would result in an error because 'total_books' is immutable
    # total_books = total_books - 40  # error: 'total_books' is immutable
    # Declaring a mutable variable 'current_books' with 'var'
    var current_books = new_books
    print("Current books:")
    print(current_books)
    # Selling some books and reducing the current_books number
    current_books = current_books - sold_books
    print("Current books after reduction:")
    print(current_books)

    # Both 'let' and 'var' support name shadowing and lexical scoping
    if total_books != current_books:
        let total_books = current_books
        print("Total books with lexical scoping, declared inside nested scope:")
        print(total_books)
    print("Total books in bookstore management function is still:")
    print(total_books)
def run_bookstore():
    # Received 100 new books
    new_books = 100

    # Sold 20 books
    sold_books = 20

    bookstore_management(new_books, sold_books)

run_bookstore()


from String import String
def bookstore_management(new_books: Int, sold_books: Int):
    # Declaring an immutable variable 'total_books' with 'let'
    let total_books: Int = new_books
    print("Total books in store:", total_books)

    # Declaring a mutable variable 'current_books' with 'var'
    var current_books: Int = new_books
    print("Current books in store:", current_books)

    # Selling some books and reducing the current_books number
    current_books = current_books - sold_books
    print("Current books after selling:", current_books)

    # Both 'let' and 'var' support name shadowing and lexical scoping
    if total_books != current_books:
        let total_books: Int = current_books
        print("Total books with lexical scoping, declared inside nested scope:", total_books)

    # Late initialization and pattern matching
    let discount_rate: F64
    let book_category: String = "Mystery"
    if book_category == "Mystery":
        discount_rate = 0.2  # 20% discount for mystery books
    elif book_category == "Fantasy":
        discount_rate = 0.1  # 10% discount for fantasy books
    else:
        discount_rate = 0.05  # 5% discount for other book categories
    print("Discount rate for", book_category, "books is:", discount_rate)

def run_bookstore():
    # Received 100 new books
    let new_books: Int = 100

    # Sold 20 books
    let sold_books: Int = 20

    bookstore_management(new_books, sold_books)

run_bookstore()


@value
struct Car:
    var make: String
    var model: String
    var year: Int
    var price: F64

def print_car_details(car: Car):
    print("Make:", car.make)
    print("Model:", car.model)
    print("Year:", car.year)
    print("Price:", car.price)

# Create car instances
car1 = Car("Toyota", "Corolla", 2023, 25000.0)
car2 = Car("Honda", "Civic", 2013, 28000.0)

# Print car details
print_car_details(car1)
print_car_details(car2)


from String import String
@value
struct Employee:
    var name: String
    var age: Int
    var department: String
    var salary: F64
    
def print_employee_details(employee: Employee):
    print("Name:", employee.name)
    print("Age:", employee.age)
    print("Department:", employee.department)
    print("Salary:", employee.salary)

# Create employee instances
employee1 = Employee("Alice Thompson", 30, "Engineering", 5000.0)
employee2 = Employee("Robert Davis", 35, "Sales", 4500.0)

employee1.name = "Alice Johnson"
employee1.age = 33


# Print employee details
print_employee_details(employee1)
print_employee_details(employee2)


from String import String
@value
struct Employee:
    var name: String
    var age: Int
    var department: String
    var salary: F64

    def print_details(self) -> None:
        print("Employee Name: ", self.name)
        print("Employee Age: ", self.age)
        print("Department: ", self.department)
        print("Salary: ", self.salary)

var employee1 = Employee("Alice Johnson", 30, "Engineering", 5000.0)
let employee2 = Employee("Robert Davis", 35, "Sales", 4500.0)
employee1.print_details()  
employee2.print_details()  

from String import String

# Function Overloading
def print_details(name: String, age: Int) -> None:
    print("Name: ", name)
    print("Age: ", age)

def print_details(name: String, age: Int, department: String) -> None:
    print("Name: ", name)
    print("Age: ", age)
    print("Department: ", department)

# Usage example
print_details("Alice Thompson", 30)
print_details("Robert Davis", 35, "Sales")


@value
struct Rectangle:
    var width: F32
    var height: F32

    fn __init__(inout self, w: F32, h: F32):
        """Construct a rectangle given its width and height."""
        self.width = w
        self.height = h

    fn __init__(inout self, other: Rectangle):
        """Construct a rectangle by copying another one."""
        self.width = other.width
        self.height = other.height

let rectangle1 = Rectangle(10.0, 20.0)  # Constructing a rectangle with width 10.0 and height 20.0
let rectangle2 = Rectangle(rectangle1)  # Constructing a rectangle by copying rectangle1

from String import String
@value
struct Employee:
    var name: String
    var age: Int
    var department: String
    var salary: F64

    def print_details(self) -> None:
        print("Employee Name: ", self.name)
        print("Employee Age: ", self.age)
        print("Department: ", self.department)
        print("Salary: ", self.salary)
    def print_details(self, include_salary: Bool) -> None:
        print("Employee Name: ", self.name)
        print("Employee Age: ", self.age)
        print("Department: ", self.department)
        if include_salary:
            print("Salary: ", self.salary)

let employee1 = Employee("Alice Johnson", 30, "Engineering", 5000.0)
let employee2 = Employee("Robert Davis", 35, "Sales", 4500.0)

employee1.print_details()  

employee2.print_details(False)

from String import String

# Function Overloading
fn print_details(name: String, age: Int) -> None:
    print("Name: ", name)
    print("Age: ", age)

fn print_details(name: String, age: Int, department: String) -> None:
    print("Name: ", name)
    print("Age: ", age)
    print("Department: ", department)

# Usage example
print_details("Alice Thompson", 30)
print_details("Robert Davis", 35, "Sales")


struct Rectangle:
    var length: F32
    var width: F32

    fn __init__(inout self, length: F32, width: F32) -> None:
        self.length = length
        self.width = width
        print("Rectangle created with length:", self.length, "and width:", self.width)

    fn area(self) -> F32:
        var area: F32 = self.length * self.width
        print("The area of the rectangle is:", area)
        return area
    
    fn area(self, side: F32) -> F32:
        var area: F32 = side * side
        print("The area of the square is:", area)
        return area

    fn perimeter(self) -> F32:
        var perimeter: F32 = 2 * (self.length + self.width)
        print("The perimeter of the rectangle is:", perimeter)
        return perimeter

    fn __add__(self, other: Rectangle) -> Rectangle:
        return Rectangle(self.length + other.length, self.width + other.width)

var rect1 = Rectangle(10.0, 15.0)
var rect2 = Rectangle(5.0, 7.0)
var squareArea: F32 = rect1.area(10.0)
var rect3 = rect1 + rect2


from String import String

@value
struct Pet:
    var name: String
    var age: Int

# Creating a new pet
var myCat = Pet("Wia", 6)
print("Original cat name: ", myCat.name)
print("Original cat age: ", myCat.age)
# Copying a pet
var copiedCat = Pet(myCat.name, 7)
print("Copied cat name: ", copiedCat.name)
print("Copied cat age: ", copiedCat.age)
var movedCat = myCat
print("Moved cat name: ", movedCat.name)
print("Moved cat age: ", movedCat.age)


@value
struct Counter:
    var count: Int

    fn increase(inout self, amount: Int):
        self.count += amount


var myCounter = Counter(0)    
print(myCounter.count)       
myCounter.increase(3)         
print(myCounter.count)      


@value
struct SomethingBig:
    var id: Int

    fn print_id(self):
        print(self.id)


fn use_something_big(borrowed a: SomethingBig, b: SomethingBig):
   a.print_id()
   b.print_id()


var obj1 = SomethingBig(1)
var obj2 = SomethingBig(2)

use_something_big(obj1, obj2)


@value
struct UniqueNumber:
    var num: Int

def use(p: UniqueNumber):
    print(p.num)

def usePointer():
    let ptr = UniqueNumber(100)
    take_ptr(ptr^)

def take_ptr(owned p: UniqueNumber):
    use(p)
    
usePointer()

