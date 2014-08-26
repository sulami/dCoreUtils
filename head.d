import std.getopt;
import std.stdio;

int main(string[] args)
{
    if (args.length > 1) {
        uint lines = 10;
        bool verbose = false;

        getopt(args, "n|lines", &lines, "v|verbose", &verbose);

        foreach (arg; args[1..args.length]) {
            File f = File(arg, "r");
            if (verbose)
                writeln("File: " ~ arg);
            for (int i = 0; i < lines; i++)
                write(f.readln());
            f.close();
        }
    }

    return 0;
}

