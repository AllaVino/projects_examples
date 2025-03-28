# 1. Create a Rectangle class to represent a rectangle.
# The class should have width and height attributes with default values, and calculate_area() methods
# to calculate the area of the rectangle and calculate_perimeter() methods to calculate the perimeter of the rectangle.
# Override the __str__, __repr__ methods.
# Then create an instance of the Rectangle class and print information about it, its area and perimeter.

from colorama import Fore, Style, init  # Import library for beauty
init(autoreset=True)

class Rectangle:
    def __init__(self, width = 1, height = 1):
        self.width = width
        self.height = height

    # Method for calculating the area of rectangle
    def calculate_area(self): # Function for calculating area
        return self.width * self.height

    # Method for calculating the perimeter of a rectangle
    def perimeter(self): # Function for calculating perimeter
        return 2 * (self.width + self.height)

    # Overriding the __str__ method for pretty output
    def __str__(self):
        return f"Rectangle: width = {self.width}, height = {self.height}"

    # Overriding the __repr__ method to represent an object in code
    def __repr__(self):
        return f"Rectangle(width={self.width}, height={self.height})"

rectangle = Rectangle(3, 9) # Set default values

# Output information about a rectangle
print(f"{Fore.YELLOW}{Style.BRIGHT}{(rectangle)} ") # Outputs the string defined in __str__
print(f"{Fore.CYAN}{Style.BRIGHT}{(repr(rectangle))} ") # Outputs the string defined in __repr__

print(f"{Fore.GREEN}{Style.BRIGHT}Area of a rectangle:{Style.RESET_ALL} {rectangle.calculate_area()}")
print(f"{Fore.MAGENTA}{Style.BRIGHT}Perimeter of a rectangle:{Style.RESET_ALL} {rectangle.perimeter()}")