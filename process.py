

# opening the txt file and assigning it to 'log-file'
log_file = open("um-server-01.txt")  

# a function called sales_reporting that passes in our txt file
def sales_reports(log_file):
    # for loop looping through each line of our passed in txt file 
    for line in log_file:
        # removing any trailing characters from each line and assigning the new modified copy of the line to 'line' 
        line = line.rstrip()
        # slicing the day elements of the line and assigning it to 'day'
        day = line[0:3]
        # looking at the day/date values stored in 'day' and if the value is equal to the day specified then print that line.  
        if day == "Mon":
            print(line)

# calling the funtion and ivoking log_file
# sales_reports(log_file)


def over_ten(log_file):
    for line in log_file:
        line = line.rstrip()
        quantity = line[16:18]
        quantity = quantity.rstrip()
        # print(quantity)
        if quantity > 10:
            print(line)


over_ten(log_file)