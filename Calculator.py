# Calculator
while True:
    a = float(input('Enter a first number: '))
    b = float(input('Enter a second number: '))
    operation = int(input('Enter a operation 1. Plus 2. Minus 3. Division 4. Multiplication: '))
    if operation == 1:
        result = a + b
        print(f'The sum of your nums is {result}.')
    elif operation == 2:
        result = a - b
        print(f'The difference of your nums is {result}.')
    elif operation == 3:
        result = a / b
        print(f'The division of your nums is {result}.')
    elif operation == 4:
        result = a * b
        print(f'The multiplication of your nums is {result}.')
    else:
        print('Invalid enter')
    exit_cycle = input('Do you want to exit the program? (y/n): ').lower()
    if exit_cycle == 'y':
        break
print('Thank you for using this program.')