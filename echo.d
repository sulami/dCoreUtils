import std.stdio;

int main(string[] args)
{
    for (int i = 1; i < args.length; i++)
        (i < args.length - 1) ? write(args[i] ~ " ") : writeln(args[i]);
    return 0;
}

