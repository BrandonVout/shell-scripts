# Run with python3

################################################################################
#                                Dice Roller                                   #
#                                                                              #
# Generates a given number of random values between 1 and a given maximum.     #
# Roll Modifiers included.                                                     #
#                                                                              #
################################################################################
################################################################################
################################################################################
#                                                                              #
#  Copyright (C) 2022 Brandon Vout                                             #
#  contact@brandonvout.com                                                     #
#                                                                              #
#  This program is free software; you can redistribute it and/or modify        #
#  it under the terms of the GNU Lesser General Public License as published    #
#  by the Free Software Foundation; either version 3 of the License, or        #
#  (at your option) any later version.                                         #
#                                                                              #
#  This program is distributed in the hope that it will be useful,             #
#  but WITHOUT ANY WARRANTY; without even the implied warranty of              #
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the               #
#  GNU General Public License for more details.                                #
#                                                                              #
#  You should have received a copy of the GNU Lesser General Public License    #
#  along with this program; if not, write to the Free Software                 #
#  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA   #
#                                                                              #
################################################################################
################################################################################
################################################################################


from enum import Enum
import random

from table_indenter import table_indenter


class Option(Enum):
    ERROR = -1
    YES = 0
    NO = 1


def confirm_check(confirm_choice: str):
    if confirm_choice == "y":
        print()
        return Option.YES
    elif confirm_choice == "n":
        print()
        return Option.NO
    else:
        print("Invalid selection!\n")
        return Option.ERROR


def confirmation(confirmation_message: str):
    confirmation_input = ""
    confirmation_ongoing = True

    while confirmation_ongoing:
        confirmation_input = input(confirmation_message)
        confirmation_input.lower()
        if confirm_check(confirmation_input) != Option.ERROR:
            confirmation_ongoing = False

    return confirmation_input == "y"


def nat_check(number_to_check: int, dice_type: int):
    nat_result = str(number_to_check)

    if number_to_check == dice_type:
        nat_result += f" Natural {dice_type}"
    elif number_to_check == 1:
        result_indent = table_indenter(dice_type)
        nat_result += f"{result_indent} Natural 1"

    return nat_result


def roll(dice_count: int, dice_type: int):
    table_header = f"Rolling {dice_count}d{dice_type}:"
    table_header_length = len(table_header)
    table_header_underline = ""
    table_header_underline = f"{table_header_underline:-<{table_header_length}}"

    print(table_header)
    print(table_header_underline)

    for x in range(dice_count):
        random.seed()
        roll_result = nat_check(random.randint(1, dice_type), dice_type)
        print(roll_result)


def is_string_valid_int(input_to_check: str, number_to_exceed: int):
    error_message = f"Invalid selection! Please choose number greater than {number_to_exceed}!\n"
    is_valid_int_input = input_to_check.isdigit()

    if not is_valid_int_input:
        print(error_message)
        return is_valid_int_input

    input_as_integer = int(input_to_check)
    is_valid_int_input = input_as_integer > number_to_exceed

    if not is_valid_int_input:
        print(error_message)

    return is_valid_int_input


def get_int(prompt_message: str, number_to_exceed: int = 0):
    input_string = ""
    input_is_valid_int = False

    while not input_is_valid_int:
        input_string = input(prompt_message)
        input_is_valid_int = is_string_valid_int(input_string, number_to_exceed)

    return int(input_string)


def main():
    dice_loop_is_ongoing = True

    while dice_loop_is_ongoing:
        dice_count = get_int("Select number of dice to roll: ", 0)
        dice_type = get_int("Select a die to roll: ", 1)
        print()

        roll(dice_count, dice_type)
        print()

        dice_loop_is_ongoing = confirmation("Roll another set? (y/n): ")


if __name__ == '__main__':
    main()
