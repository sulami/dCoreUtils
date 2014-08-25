import std.file;
import std.stdio;

int main(string[] args)
{
    foreach (arg; args[1..args.length])
        foreach (f; dirEntries(arg, SpanMode.shallow))
            writeln(f);
    return 0;
}

