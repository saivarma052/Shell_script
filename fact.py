import itertools
import math

# Define the range of digits
digits = list(range(8))  # Numbers from 0 to 7

# Generate all possible 3-digit permutations
permutations = list(itertools.permutations(digits, 3))

# Calculate the number of permutations using factorial
num_permutations = math.factorial(len(digits)) // math.factorial(len(digits) - 3)

# Output the results
print(f"Number of 3-digit sequences: {num_permutations}")
print("Sample of 3-digit sequences:")
for perm in permutations[:5040]:  # Display the first 10 permutations
    print(perm)
