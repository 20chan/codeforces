for _ in range(int(input())):
    s = input()
    print(f'{s[0]}{len(s)-2}{s[-1]}' if len(s) > 9 else s)
