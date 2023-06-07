from tkinter import *
from typing import Literal
from PIL import ImageTk, Image
from moviepy.editor import VideoFileClip
import pygame
pygame.mixer.init()
import ttkbootstrap as ttk


app = ttk.Window(themename="vapor")
app.geometry("720x500")
app.title("Anasheed")
app.maxsize(width="720",height="500")
app.minsize(width="720",height="500")



custom_font0 = ("Omnes Arabic Black",19)
memo_1 = Label(text="" )
memo_1.pack()

memo1 = Label(text="__________________________________________________________________________________________________________________________________________________________")
memo1.place(x=0,y=49)

memo = Label(text=" أنــاشـــــيد"   ,font=custom_font0,fg="#0a1a3d",bg="gray")
memo.pack()









custom_font = ("Omnes Arabic",16)
custom_font1 =("Monadi",13)

lyrics_text = StringVar()
lyrics_label = Label( textvariable=lyrics_text,font=custom_font,fg="black",cursor="heart"
                        )
lyrics_label.pack()


memo2 = Label(text="______________________________________________________________________________________________________________________________________________________")
memo2.place(x=0,y=444)





def play_video1():
    music_path = "C:\\Users\\elyas\\Videos\\PYTHON\\el.mp3"
    pygame.mixer.music.load(music_path)
    pygame.mixer.music.play()
    
    lyrics_text.set(["تم تشغيل قصيدة الغبطه فكره", ])
    lyrics_label.place(x=222,y=333)


def play_video2():
    music_path2 = "C:\\Users\\elyas\\videos\\d.mp3"
    pygame.mixer.music.load(music_path2)
    pygame.mixer.music.play()
    lyrics_text.set([" تم تشغيل وكن راضياً"])
    lyrics_label.place(x=255,y=333)
    


def play_video3():
    music_path3 = "C:\\Users\\elyas\\videos\\qm.mp3"
    pygame.mixer.music.load(music_path3)
    pygame.mixer.music.play()
    lyrics_text.set([" تم تشغيل قم وحيداً "])
    lyrics_label.place(x=255,y=333)

def play_video4():
    music_path4 = "C:\\Users\\elyas\\videos\\return.mp3"
    pygame.mixer.music.load(music_path4)
    pygame.mixer.music.play()
    lyrics_text.set(["تم تشغيل رجعت"])
    lyrics_label.place(x=277,y=333)



def play_video5():
    music_path5 = "C:\\Users\\elyas\\videos\\yesterday.mp3"
    pygame.mixer.music.load(music_path5)
    pygame.mixer.music.play()
    lyrics_text.set(["تم تشغيل غناه الأمس"])
    lyrics_label.place(x=255,y=333)

def play_video6():
    music_path = "C:\\Users\\elyas\\videos\\yuslim.mp3"
    pygame.mixer.music.load(music_path)
    pygame.mixer.music.play()
    lyrics_text.set(["تم تشغيل قصيدة يسلم المرء أخوه"])
    lyrics_label.place(x=200,y=333)





memo2 = Button(text="قصيدة الغبطه فكره ",fg="black",command=play_video1,font=custom_font1,cursor="heart")
memo2.place(x=16,y=88)

memo3 = Button(text="         وكن راضياً         ",fg="black",command=play_video2,font=custom_font1,cursor="heart")
memo3.place(x=260,y=88)

memo4 = Button(text="    قم وحيداً  ",fg="black",command=play_video3,font=custom_font1,cursor="heart")
memo4.place(x=540,y=88)

memo5 = Button(text="      رجعت     ",fg="black",command=play_video4,font=custom_font1,cursor="heart")
memo5.place(x=540,y=180)

memo6 = Button(text="  قصيدة غناه الأمس ",fg="black",command=play_video5,font=custom_font1)
memo6.place(x=16,y=180)

memo7 = Button(text="قصيدة يسلم المرء أخوه ",fg="black",command=play_video6,font=custom_font1,cursor="heart")
memo7.place(x=260,y=180)






app.mainloop()