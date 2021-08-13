log_file = open("um-server-01.txt") # open a file called "um-server-01-txt"


def sales_reports(log_file): #define sales reports in the file um-server
    for line in log_file: #for in loop
        line = line.rstrip() #rstrip will remove \n character
        day = line[0:3] #the day in line 3
        if day == "Monday": # if the day is Tuedays (or Monday) print that line
            print(line)


sales_reports(log_file) #close file
