# joke_ws_gen.py  ->  writes joke_ws.ws (59 - Whitespace - Invisible Spaces and Tabs Joke Language)
S, T, L = " ", "\t", "\n"

def push(n):
    sign = S if n >= 0 else T
    bits = bin(abs(n))[2:].replace("0", S).replace("1", T)
    return S + S + sign + bits + T          # SS  sign  digits  LF

OUT_CHAR = T + S + S                        # Tab Space Space = output character

def ws_program(text):
    body = "".join(push(ord(c)) + OUT_CHAR for c in text)
    return body + L + L + L                 # end of program

with open("joke_ws.ws", "w", encoding="utf-8") as f:
    f.write(ws_program("Whitespace OK\n"))

print("Whitespace: Invisible Spaces and Tabs Joke Language -> wrote joke_ws.ws")
