# Launcher for Stoner Buddy — auto-restarts when the bot exits with code 42.
# Run this file while developing so /restart works smoothly.

import subprocess
import sys
import time

PYTHON = sys.executable  # Use the same Python that runs this launcher

DEV_GUILD_ID=1234567890 # Place your DID here.


while True:
    exit_code = subprocess.call([PYTHON, "stoner_buddy.py"])

    if exit_code == 42:
        print("Restart requested. Re-launching in 1s…")
        time.sleep(1)
        continue  # loop again to restart

    print(f"Bot exited with code {exit_code}. Not restarting.")
    break
    
