# 2. Create a BankAccount class to represent a bank account. The class should have account_number
# and balance attributes, and deposit() and withdraw() methods to deposit money into the account. Then create an instance of the BankAccount class, deposit some money into the account, and withdraw some money.
# Print the remaining balance. Don't forget to provide a case where the balance can go below zero when withdrawing.
# In this case, we won't go into the negative, but will return the message "Not enough funds in the account".

from colorama import Fore, Style, init
init(autoreset=True)

class BankAccount:
    def __init__(self, account_number, balance = 0):
        self.account_number = account_number
        self.balance = balance

    # Method for depositing money into an account
    def deposit(self, amount):
        if amount > 0:
            self.balance += amount
            print(f"{Fore.GREEN}{Style.BRIGHT} Current balance:{Style.RESET_ALL} {self.balance}")
        else:
            print(f"{Fore.RED}{Style.BRIGHT} Error: The amount to deposit must be positive!.{Style.RESET_ALL}")

    # Method for cash withdrawal
    def withdraw(self, amount):
        if amount > self.balance:
            print(f"{Fore.RED}{Style.BRIGHT} Low balance.{Style.RESET_ALL}")
        else:
            self.balance -= amount
            print(f"{Fore.GREEN}{Style.BRIGHT} Current balance:{Style.RESET_ALL} {self.balance}")

    def __str__(self):
                """Returns a string representation of the account."""
                return f"{Fore.LIGHTBLUE_EX}{Style.BRIGHT} Bank Account № {Style.RESET_ALL}{self.account_number}, {Fore.LIGHTBLUE_EX}{Style.BRIGHT}Balance: {Style.RESET_ALL}{self.balance} EUR"

# Create an account instance with an initial balance of 100 EUR
account = BankAccount("10000008", 0)

# We deposit 50 EUR
account.deposit(50)

# We are trying to withdraw 30 EUR
account.withdraw(30)

# Trying to withdraw 200 EUR (should show an error)
account.withdraw(200)

# We display the current balance
print(account)



