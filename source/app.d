/// dbd repl, etc.
module app;

import std.stdio : write, writeln, readln;
import std.string : strip;

void printPrompt()
{
    write("db > ");    
}

void main()
{
    writeln("dbd repl v0.0.0. Ctrl-D to quit.");

    printPrompt();
    char[] buf;
    while (readln(buf))
    {
        switch (strip(buf))
        {
            case ".exit":
                return;
            default:
                writeln("ERROR: Unrecognized command ", buf);
        }
        
        printPrompt();
    }
}
