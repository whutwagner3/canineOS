import sys

popular=['Boxer','Brittany','Dachshund','English Bulldog','German Shepherd Dog','Golden Retriever',\
         'Great Dane','Labrador Retriever','Mastiff','Poodle','Pug','Rottweiler']
txt = sys.argv[1]

check = True
with open(txt) as fi:
    for line in fi:
        text=line.split(None,1)
        if text[1].strip() in popular:
            print(text[0]+'\t'+text[0])
        if check and text[1].strip()=='Mix':
            check=False
            print(text[0]+'\t'+text[0])
