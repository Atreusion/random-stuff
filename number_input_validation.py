"""Shows off int/float input validation"""


def num_input(question, numtype, min_value = None, max_value = None):
    """This function validates if the input is accepted as an int or float.

    Optional min and max values."""
    # checks if numtype is int or float, errors out otherwise
    if numtype not in ["int", "float"]:
        raise ValueError("Argument numtype must be string 'int' or 'float'")
    while True:  # keep repeating the question until you get a valid answer
        try:  # try: wrapper to cast the answer to int/float
            answer = input(question)  # ask the question
            if numtype == "int":  # if the numtype given is int, try to cast to int
                answer = int(answer)
            else:  # else, the numtype given is float, try to cast to float
                answer = float(answer)
            # if there is a mix/max number, make sure the answer is between them
            if ((min_value is None or answer >= min_value)
                    and (max_value is None or answer <= max_value)):
                return answer
            # otherwise, state the min and max values
            print((f"Minimum value: {min_value}" if min_value is not None else "")
                  + (f"\nMaximum value: {max_value}" if max_value is not None else ""))
        except ValueError:
            # if you can't cast to int/float, say so and try again
            print("Invalid input. Please enter a"
                  + ("n integer." if numtype == "int" else " floating point number."))


ans = num_input("Which number? ", "int", -10, 100)

print(ans)
