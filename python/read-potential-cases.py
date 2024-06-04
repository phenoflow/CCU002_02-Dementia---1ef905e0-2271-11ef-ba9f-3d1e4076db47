# martinchapman, 2020.

import sys, csv

with open(sys.argv[1], 'r') as file_in, open('ccu002_02-dementia-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames)
    csv_writer.writeheader();
    for row in csv_reader:
        csv_writer.writerow(row)