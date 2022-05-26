#include <json.hpp>
#include <iostream>
#include <iomanip>
#include <fstream>
#include <string>
#include <stdlib.h>
#include <curses.h>
#include <signal.h>
using json = nlohmann::json;

int load()
{

    std::string line;
    std::vector<json> contents;

    std::ifstream myfile ("example.json");
    if (myfile.is_open()) {
        while ( getline (myfile,line) ) {
            //json j = json::parse(line);
            //std::cout << j << '\n';
            contents.emplace_back(json::parse(line));
        }
        myfile.close();
    } else {
        std::cout << "Unable to open file"; 
    }

    int x=0,y=0;
    for (auto &item: contents) {
        auto s = item["process"].dump();
        auto m = item["log"]["msg"].dump();
        //printw("%s:%s\n", s.c_str(), m.c_str());
        mvadd_wchstr(x, y, (const cchar_t*)s.c_str());
        mvadd_wchstr(x, y + 20, (const cchar_t*)":");
        mvadd_wchstr(x, y + 21,  (const cchar_t*)m.c_str());
        x++;
    }
    /*
    // parse and serialize JSON
    json j_complete = json::parse(text);
    std::cout << std::setw(4) << j_complete << "\n\n";


    // define parser callback
    json::parser_callback_t cb = [](int depth, json::parse_event_t event, json & parsed)
    {
        // skip object elements with key "Thumbnail"
        if (event == json::parse_event_t::key and parsed == json("Thumbnail"))
        {
            return false;
        }
        else
        {
            return true;
        }
    };

    // parse (with callback) and serialize JSON
    json j_filtered = json::parse(text, cb);
    std::cout << std::setw(4) << j_filtered << '\n';
    */
}


static void finish(int sig);

int
main(int argc, char *argv[])
{
    int num = 0;

    /* initialize your non-curses data structures here */

    (void) signal(SIGINT, finish);      /* arrange interrupts to terminate */

    (void) initscr();      /* initialize the curses library */
    keypad(stdscr, TRUE);  /* enable keyboard mapping */
    (void) nonl();         /* tell curses not to do NL->CR/NL on output */
    (void) cbreak();       /* take input chars one at a time, no wait for \n */
    (void) noecho();         /* echo input - in color */
    if (has_colors())
    {
        start_color();

        /*
         * Simple color assignment, often all we need.  Color pair 0 cannot
         * be redefined.  This example uses the same value for the color
         * pair as for the foreground color, though of course that is not
         * necessary:
         */
        init_pair(1, COLOR_RED,     COLOR_BLACK);
        init_pair(2, COLOR_GREEN,   COLOR_BLACK);
        init_pair(3, COLOR_YELLOW,  COLOR_BLACK);
        init_pair(4, COLOR_BLUE,    COLOR_BLACK);
        init_pair(5, COLOR_CYAN,    COLOR_BLACK);
        init_pair(6, COLOR_MAGENTA, COLOR_BLACK);
        init_pair(7, COLOR_WHITE,   COLOR_BLACK);
    }


    for (;;)
    {
        int c = getch();     /* refresh, accept single keystroke of input */
        attrset(COLOR_PAIR(num % 8));
        num++;

        /* process the command keystroke */
        if (c == 'l') {
            printw("l pressed");
            load(); 
        }
    }

    finish(0);               /* we're done */
}

static void finish(int sig)
{
    endwin();

    /* do your non-curses wrapup here */

    exit(0);
}
