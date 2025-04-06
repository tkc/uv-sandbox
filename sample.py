def add(a, b):
    """2つの数値を足し算する関数"""
    return a + b


def main():
    """メイン関数"""
    num1 = 10
    num2 = 20
    result = add(num1, num2)
    print(f"{num1} + {num2} = {result}")


if __name__ == "__main__":
    main()
