import std.conv;
import std.file;
import std.stdio;
import std.string;

int main(string[] args)
{
    foreach (arg; args[1..args.length]) {
        string t[] = splitLines(readText(arg));
        uint no = 0;
        ulong ind = to!string(t.length).length;
        foreach (line; t)
            writeln(rightJustify(to!string(++no), ind) ~ " " ~ line);
    }
    return 0;
}

