"""Calculates the bake time of a lasagna"""

EXPECTED_BAKE_TIME = 40
PREPARATION_TIME = 2


def bake_time_remaining(time_elapsed):
    """Calculate the bake time remaining.

    :param elapsed_bake_time: int baking time already elapsed.
    :return: int remaining bake time derived from 'EXPECTED_BAKE_TIME'.

    Function that takes the actual minutes the lasagna has been in the oven as
    an argument and returns how many minutes the lasagna still needs to bake
    based on the `EXPECTED_BAKE_TIME`.
    """
    return EXPECTED_BAKE_TIME - time_elapsed


def preparation_time_in_minutes(layers):
    """
    Return preparation time in minutes.

    This function takes one argument representing the number of layers and
    calculates the total preparation time in minutes.
    """
    return layers * PREPARATION_TIME


def elapsed_time_in_minutes(layers, elapsed_time):
    """
    Return elapsed cooking time.

    This function takes two numbers representing the number of layers & the time already spent
    baking and calculates the total elapsed minutes spent cooking the lasagna.
    """
    return layers * PREPARATION_TIME + elapsed_time
