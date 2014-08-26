import std.getopt;
import std.stdio;

int main(string[] args)
{
    if (args.length > 1) {
        uint lines = 10;
        getopt(args, "n|lines", &lines);
        foreach (arg; args[1..args.length]) {
            File f = File(arg, "r");
            for (int i = 0; i < lines; i++) {
                write(f.readln());
            }
            f.close();
        }
    }
    return 0;
}

