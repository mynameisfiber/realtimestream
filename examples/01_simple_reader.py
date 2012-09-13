#!/usr/bin/env python
#
# From the Realtime Data Science tutorial at PyGotham
# Micha Gorelick, micha@bit.ly, 2012... copyleft
# https://github.com/mynameisfiber/realtimestream/
#

from pysimplehttp.BaseReader import BaseReader

def print_message(data):
    print data
    return True # we must return True to say our tasked finished correctly

if __name__ == "__main__":
    tasks = {"print" : print_message} # tasks are named for logging
    reader = BaseReader("http://localhost:8081", tasks, queuename="message_printer")
    reader.run()
