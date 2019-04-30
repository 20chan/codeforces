fun main() {
    print(if(Regex("""(\d+[02]|\d*[468])""").matches(readLine()!!)) "YES" else "NO");
}