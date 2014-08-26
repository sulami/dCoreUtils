import std.file;
import std.stdio;

int main(string[] args)
{
    foreach (arg; args[1..args.length])
        isDir(arg) ? rmdirRecurse(arg) : remove(arg);
    return 0;
}

