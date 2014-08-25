import std.stdio;
import std.string;

int main(string[] args)
{
    if (args.length > 1)
        writeln(join(args[1..args.length], " "));
    return 0;
}

