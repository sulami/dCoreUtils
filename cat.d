import std.file;
import std.stdio;

int main(string[] args)
{
    foreach (arg; args[1..args.length])
        write(readText(arg));
    return 0;
}

