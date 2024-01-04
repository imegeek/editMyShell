import os, platform
import subprocess

colors = ["black", "red", "green", "yellow", "blue", "magenta", "cyan", "white"]
bold = "\33[1m"
reset = "\33[0m"
underline = "\33[4m"

for index, color in enumerate(colors):
    # print(index, color)
    globals()[color] = f"\33[9{index}m" # create new variable

logo = [
"{}           __ __ __   _______         _______ __           __ __ \n".format(red),
"{}.-----.--|  |__|  |_|   |   |.--.--.|     __|  |--.-----.|  |  |\n".format(yellow),
"{}|  -__|  _  |  |   _|       ||  |  ||__     |     |  -__||  |  |\n".format(blue),
"{}|_____|_____|__|____|__|_|__||___  ||_______|__|__|_____||__|__|\n".format(magenta),
"{}                             |_____|                    \n".format(cyan),
]

def main():
    print(*logo)
    try:
        if os.environ["ANDROID_ROOT"] == "/system":
            system = "Android"
    except Exception:
        system = platform.system()

    if os.name == "nt":
        editor = "start" # open the file extension with default application
        command = subprocess.run("powershell -c \"echo $PROFILE\"", shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)

        if command.stdout:
            SHELL = command.stdout.strip()
        
            if not os.path.exists(SHELL):  # Check if profile not exists then create new empty file.
                subprocess.run("powershell -c \"New-Item -Path $PROFILE -Type File -Force\"", shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    else:
        editor = "editor" # open the file with default editor
        SHELL = "~/." + os.path.basename(os.environ["SHELL"]) + "rc"

    print(f"{green}System: {blue}{system}\n{green}Opening: {underline}{blue}{SHELL}{reset} ...")
    os.system(f"{editor} {SHELL}")

if __name__ == "__main__":
    main()