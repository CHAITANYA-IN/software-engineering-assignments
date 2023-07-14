def VCF_Convertor(record):
	file = "BEGIN:VCARD\nVERSION:3.0\n"
	file += "N:{1};{0};;;\nFN:{0} {1}\nTEL;TYPE=HOME;VOICE:{2}\nEMAIL;TYPE=INTERNET:{3}".format(*record)
	file += "\nEND:VCARD\n"
	return file	# returning the vCard content for the input record

if __name__ == '__main__':
	file_name = input("Enter the path to csv file:\n")	# Name of .csv file
	trim = lambda x:x.strip()	# lambda function for removing spaces
	with open(file_name, 'r') as csv_file:	# opening the .csv file
		write_file = open('%s.vcf'%(file_name.split('.')[0]), 'w')	# opening .vcf file to write
		delimiter = input('Enter the correct delimiter for file:\n')	# getting the delimiter

		csv_headers = [*map(trim, csv_file.readline().split(delimiter))]	# parsing the first row containing name of columns

		while(True):
			record = [*map(trim, csv_file.readline().split(delimiter))]	# parsing the rows one by one.
			if(record == ['']):
				break

			write_file.write(VCF_Convertor(record))	# generating the vCards from parsed lists and writing into the vcf file.  
		write_file.close()	# closing the vcf file






"""
Data = {
			'Cell':'TEL;CELL;VOICE:{Cell_Phone_Number}', 
			'Name': 'N:{Last_Name};{First_Name};{Middle_Name};{Designation}',
			'Full Name': 'FN:{Designation} {First_Name} {Middle_Name} {Last_Name}',
			'Email': 'EMAIL;TYPE=INTERNET:{Email}', 
			'Preferred Email': 'EMAIL;PREF;TYPE=INTERNET:{Prefered_Email}',
			'Nickname': 'NICKNAME:{Nickname}',
			'Address': 'ADDR;TYPE=HOME:;;',
			'Website': 'URL;TYPE=HOME:{URL}',
			'Phone': 'TEL;TYPE=HOME;VOICE:{Phone_Number}', 
			'Fax': 'TEL;TYPE=HOME;FAX:{Fax_Number}'
		}
"""