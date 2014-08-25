import std.stdio;

int main(string[] args)
{
    if (args.length > 1) {
        foreach (arg; args[1..args.length]) {
            File f = File(arg, "r");
            for (int i = 0; i < 10; i++) {
                write(f.readln());
            }
            f.close();
        }
    }
    return 0;
}

