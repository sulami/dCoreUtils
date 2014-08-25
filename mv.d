import std.file;
import std.stdio;

int main(string[] args)
{
    if (args.length != 3)
        return 1;

    rename(args[1], args[2]);

    return 0;
}

