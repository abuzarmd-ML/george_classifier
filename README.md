
# george_classifier

- This project is based on classification of the presence of St. George in the image.
- I am using state of the art pre-trained YOLOV7

# Steps to Classify St george from set of images.

## Pre-Processing of Dataset
- Clone this repository.
- Download the Dataset in the cloned directory. 
  
  In this case you can download the dataset from Google-Drive.
  
  [Dataset](https://drive.google.com/drive/folders/1fIHdM54Q_eN5ZxF5nAGMaVIirMlNf3Sk)

- Unzip the dataset present in zip folder with the name 'george_test_task.zip'.

- Two folder are there- 'george' and 'no-george'.

  'no-george' folder is of no use.
- Divide the dataset into training, validation and testing set. 
  
  For that you can run the script- `preprocessing.ipynb`.

- Clean the images present in **train/images** and **val/images** manually. 
  Just delete the images which do not contain 'st. george'
- Annotate the images present in **train/images** and **val/images**. 
  
  Annotation steps are given below.

## Annotate the images.
  1. Install LabelImg using the below command:
  `pip install labelImg` 

  2. Launch labelImg for annotating images. run below command:
    
  `labelImg`

  3. Once GUI for labelImg is opened.
  - click 'Open Dir' icon and specify the path of the image **train/images**
  - click 'Change Save Dir' and specify the path of labels **train/labels**
  - change save format to 'YOLO', if 'PascalVOC' is there.
  - Click on CreateRectBox icon, and draw the rectangle around 'george' face.
  - automatically, .txt files will be saved.
  - perform the above steps for validation folder.

[Go through the official labelImg repo](https://github.com/heartexlabs/labelImg)

**NOTE:-** `You can use train, val, test folder for the project purpose from this repo. Train and val folder is annotated.`


## Train `YOLOV7` for custom classification.
As the training is resource extensive. It is recommended to use google colab, where we can use free GPU for training purpose.

**Perform below steps for training:**
- upload this repo to your google drive.
- open the notebook- `Yolov7-training.ipynb` and run each cell.
- All the steps are marked in the notebook for custom-training.
- Before launching the training cell, make sure GPU are enabled.
- go to 'Runtime -> change Runtime type -> select GPU'.

**Post Training**
- As soon as training is finished, you can see the new weights file at the location:
  `yolov7/runs/train` .
- You may find different weights folder there, but last one is the most recent.
- In the last folder, you can find `weights` folder inside that. expand it and various kind of file can be seen.
- you can find best model out there- `yolov7/runs/train/yolov7-custom2/best.pt`.

**Classification steps:**
- run the last cell `Yolov7-training.ipynb`. The result will be saved in 'classification_result/' folder.

# Steps to run this classifier at your disposal
- step1: clone this repo at your local machine-

  `git clone https://github.com/abuzarmd-ML/george_classifier.git`

- Step2: make virtual environment on your system:

  **For linux :**
  - use the command on the terminal:
    
    `mkvirtualenv george_classifier`

  - write the command to get in the virtual env:
    
    `workon george_classifier`

  **For Windows :**
  - Follow through the link below:
    
    [virtual environment on windows](https://medium.com/co-learning-lounge/create-virtual-environment-python-windows-2021-d947c3a3ca78)

- Install all the dependencies with custom manager `dependencies_resolver.sh`
  command : ` bash dependencies_resolver.sh`

- To test the result of the classifier, run the bash script `inference_classification_local.sh`

  command: `bash inference_classification_local.sh`
  
  ***NOTE :*** You can change the script to locate your directory of test images.
  change the flag value `--source ./test` (in place of test/ folder, put your directory)

- The classified images are there in the `runs/detect/exp` folder. As many times you will run the inference,new folder will be created at the same location, only change will be `exp or exp1 or exp2`. Most recent is the highest indexed folder.

### Classification Result:
**Image with George Present**

![george](https://github.com/abuzarmd-ML/george_classifier/blob/main/runs/detect/exp/67f2364f5913828fdbcfbdb29b3388d2.jpg)

**Image with George Absent**

![No george](https://github.com/abuzarmd-ML/george_classifier/blob/main/runs/detect/exp/91f995379ab2d6ad77c55a328032e471.jpg)

## Acknowledgements
 - [My google Drive link where I performed training](https://drive.google.com/drive/folders/1-LZGa5BC_Taf3wKBm71MZMO0P8HyCwkm?usp=share_link)
 - [YOLOv7 Pre-trained model](https://github.com/WongKinYiu/yolov7)
 - [labelImg tool for annotation](https://github.com/heartexlabs/labelImg)
