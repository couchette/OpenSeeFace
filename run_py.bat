%ECHO OFF

python facetracker.py -l 1

echo Make sure that nothing is accessing your camera before you proceed.

set /p cameraNum=Select your camera from the list above and enter the corresponding number:

python facetracker.py -a %cameraNum%

set /p dcaps=Select your camera mode or -1 for default settings:
set /p fps=Select the FPS:

python facetracker.py -c %cameraNum% -F %fps% -D %dcaps% -v 3 -P 1 --discard-after 0 --scan-every 0 --no-3d-adapt 1 --max-feature-updates 900

pause