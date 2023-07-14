from pytube import YouTube
import datetime

video = YouTube(input('Enter a link for Youtube Video:\n')) # creating a object for the youtube video

caption = video.captions.get_by_language_code(input('Enter the language for subtitles (like en):\n'))   # getting the subtitles in the inputted language
#caption = video.captions[input('Enter the language for subtitles (like en):\n')]
if caption==None:
    print("Video has no subtitles.")
    exit(1)

f = open('video-%s.srt'%(datetime.datetime.now()), 'w') # creating file with name including current time for distinguishing them in the folder
f.write(caption.generate_srt_captions())    # writing the captions generated into the file
f.close()   # closing the file 
print('File Generated Sucessfully') # Confirmation message.