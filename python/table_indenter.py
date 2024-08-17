################################################################################
################################################################################
################################################################################
#                                                                              #
#  Copyright (C) 2024 Brandon Vout                                             #
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


def table_indenter(max_number: int, fillchar: str = " ", base_number: int = 10):
    """
    Generates table column indent based on number of digits in a given number.

    Supports non-base-ten number systems.

    Example:
        A value of 100 will generate an indent of 2 spaces to render "0" as "  0".

    Args:
        max_number (int): Number to compare to base_number. Highest number value in sequence.
        fillchar (str, optional): Character to fill indent (e.g. "0", "-"). Defaults to " ".
        base_number (int, optional): Base number system (e.g. binary, decimal, hexadecimal). Defaults to 10.

    Returns:
        str: String filled with fillchar based on how many times max_number exceeds base_number.
    """
    if base_number == 0:
        return "Error: Divide by zero! Base must be a positive integer greater than zero. "
    if base_number < 0:
        return "Error: Negative base! Base must be a positive integer greater than zero. "

    current_number = max_number
    indent = ""

    while current_number >= base_number:
        indent += str(fillchar)
        current_number /= base_number

    return indent
