
# george_classifier

This project is based on project on classification of the presence of St. George in the image.

# Steps to run this classifier on your system

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
