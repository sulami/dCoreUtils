import std.conv;
import std.file;
import std.stdio;
import std.string;

int main(string[] args)
{
    foreach (arg; args[1..args.length]) {
        string t[] = splitLines(readText(arg));
        uint no = 0;
        foreach (line; t)
            writeln(rightJustify(to!string(++no), to!string(t.length).length)
                    ~ " " ~ line);
    }
    return 0;
}

