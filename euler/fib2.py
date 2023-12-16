# By considering the terms in the Fibonacci sequence
# whose values do not exceed four million, find the sum
# of the even-valued terms.


def fibonacci_lt_limit(limit):
    a, b, sum = 1, 2, 0

    for _ in range(int(limit)):
        if b <= limit:
            if b % 2 == 0:
                sum += b
            a, b = b, (b + a)

    return sum


ans = fibonacci_lt_limit(4e6)

print(ans)
