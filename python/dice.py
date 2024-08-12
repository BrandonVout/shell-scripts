# This is a sample Python script.

# Press Shift+F10 to execute it or replace it with your code.
# Press Double Shift to search everywhere for classes, files, tool windows, actions, and settings.


from enum import Enum
import random


class Option(Enum):
	ERROR = -1
	YES = 0
	NO = 1


def confirm_check(confirm_choice):
	if confirm_choice == "y":
		print("Resetting!\n")
		return Option.YES
	elif confirm_choice == "n":
		print("Stopping!\n")
		return Option.NO
	else:
		print("Invalid selection!\n")
		return Option.ERROR


def confirmation(confirmation_message):
	confirmation_input = ""
	confirmation_ongoing = True

	while confirmation_ongoing:
		confirmation_input = input(confirmation_message)
		confirmation_input.lower()
		if confirm_check(confirmation_input) != Option.ERROR:
			confirmation_ongoing = False

	return confirmation_input == "y"


def spacer(type_of_spaces, number_of_spaces, number_base=10):
	spaces = ""

	while number_of_spaces >= number_base:
		spaces += str(type_of_spaces)
		number_of_spaces /= number_base

	return spaces


def nat_check(number_to_check, dice_type):
	nat_result = str(number_to_check)

	if number_to_check is dice_type:
		nat_result += " Natural " + str(dice_type)
	elif number_to_check == 1:
		nat_result += spacer(" ", dice_type) + " Natural 1"

	return nat_result


def roll(dice_count, dice_type):
	table_header = "Rolling " + str(dice_count) + "d" + str(dice_type) + ":"
	table_header_underline = "------------" + spacer("-", dice_count) + spacer("-", dice_type)

	print(table_header)
	print(table_header_underline)

	for x in range(dice_count):
		random.seed()
		roll_result = nat_check(random.randint(1, dice_type), dice_type)
		print(roll_result)


def int_check(input_to_check):
	error_message = "Invalid selection! Please choose number greater than zero (0)!\n"

	input_is_not_a_valid_int = not input_to_check.isdigit()

	if input_is_not_a_valid_int:
		print(error_message)
	else:
		input_as_integer = int(input_to_check)
		if input_as_integer < 1:
			input_is_not_a_valid_int = True
			print(error_message)

	return input_is_not_a_valid_int


def get_int(prompt_message):
	input_as_string = ""
	input_is_not_a_valid_int = True

	while input_is_not_a_valid_int:
		input_as_string = input(prompt_message)
		input_is_not_a_valid_int = int_check(input_as_string)

	input_as_integer = int(input_as_string)

	return input_as_integer


def main():
	dice_loop_is_ongoing = True

	while dice_loop_is_ongoing:
		dice_count = get_int("Select number of dice to roll: ")
		dice_type = get_int("Select a die to roll: ")
		print()

		roll(dice_count, dice_type)
		print()

		dice_loop_is_ongoing = confirmation("Roll another set? (y/n): ")


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
	main()

# See PyCharm help at https://www.jetbrains.com/help/pycharm/
