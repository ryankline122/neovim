def doSomething(action):
    print(f"I am going to {action}")


def subtract(x, y):
    return x - y


def another_function():
    return "Hello World"


def add(x, y):
    return x + y


def multiply(x, y, z):
    res: int = x * y * z

    return res


if __name__ == "__main__":
    doSomething(action="eat")
    add(1, 2)
