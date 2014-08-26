import std.file;
import std.stdio;

int main(string[] args)
{
    if (args.length == 1)
        foreach (f; dirEntries(getcwd(), SpanMode.shallow))
            writeln(f);

    foreach (arg; args[1..args.length])
        foreach (f; dirEntries(arg, SpanMode.shallow))
            writeln(f);

    return 0;
}

