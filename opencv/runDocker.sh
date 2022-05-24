docker run -m 8GB -it --rm -e DISPLAY=$DISPLAY -v ${PWD}:/src  -it boshi/opencv:1
xhost -local:docker
