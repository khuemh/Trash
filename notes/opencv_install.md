# OpenCV 3 Installation tutorial
## For Python & C/C++

---

Ubuntu 16.04 LTS 64bit

---

### 1. Updating Ubuntu
** Run following commands step by step
``` bash
$ sudo apt-get update
$ sudo apt-get upgrade
```
### 2. Install Independencies
** Run following commands step by step
``` bash
$ sudo apt-get install build-essential cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev

$ sudo apt-get install python3.5-dev python3-numpy libtbb2 libtbb-dev

$ sudo apt-get install libjpeg-dev libpng-dev libtiff5-dev libjasper-dev libdc1394-22-dev libeigen3-dev libtheora-dev libvorbis-dev libxvidcore-dev libx264-dev sphinx-common libtbb-dev yasm libfaac-dev libopencore-amrnb-dev libopencore-amrwb-dev libopenexr-dev libgstreamer-plugins-base1.0-dev libavutil-dev libavfilter-dev libavresample-dev
```

### 3. Get OpenCV
- Download OpenCV 3 Source code from *github*

    ** Download 3.x.x tar.gz file

    - [x] [OpenCV](https://github.com/opencv/opencv/releases)

    - [x] [OpenCV-Contrib](https://github.com/opencv/opencv_contrib/releases)

- Rename them to *opencv* and *opencv_contrib* and Extract both file in current folder
```bash
$ tar -zxvf opencv # extract opencv tar file

$ tar -zxvf opencv_contrib #extract opencv_contrib tar file
```
- Move *opencv* and *opencv_contrib* to /opt directory
```bash
$ sudo mv opencv opencv_contrib /opt
```

### 4. Build and Install OpenCV
** Run following commands step by step
```bash
$ sudo -s #switch to superuser mode

$ cd /opt # enter opt directory

$ cd opencv

$ mkdir release

$ cd release

$ cmake -D BUILD_TIFF=ON -D WITH_CUDA=OFF -D ENABLE_AVX=OFF -D WITH_OPENGL=OFF -D WITH_OPENCL=OFF -D WITH_IPP=OFF -D WITH_TBB=ON -D BUILD_TBB=ON -D WITH_EIGEN=OFF -D WITH_V4L=OFF -D WITH_VTK=OFF -D BUILD_TESTS=OFF -D BUILD_PERF_TESTS=OFF -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D OPENCV_EXTRA_MODULES_PATH=/opt/opencv_contrib/modules /opt/opencv/

$ make -j4

$ make install 

$ ldconfig

$ exit

$ cd ~
```

Check if OpenCV is installed 
```bash
$ pkg-config --modversion opencv
```
You will get this if it was installed.
```bash
3.x.x
```
 *Congratulation!*
## 5. Test the result
Open Terminal
```bash
$ python3
>>> import cv2
>>> cv2.__version__
'3.x.x'
>>> [Ctrl + Z] # Exit python3
```