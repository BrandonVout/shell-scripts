################################################################################
#                                 Space Filler                                 #
#                                                                              #
# Generates indent based on number of digits in a given number.                #
#                                                                              #
# Example:                                                                     #
#   A value of 100 will generate an indent of 2 spaces to render "0" as "  0". #
#                                                                              #
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


def space_filler(number_of_spaces, fillchar = " ", number_base = 10):
    spaces = ""

    while number_of_spaces >= number_base:
        spaces += str(fillchar)
        number_of_spaces /= number_base

    return spaces
