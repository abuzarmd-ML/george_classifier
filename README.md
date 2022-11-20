
# george_classifier

This project is based on project on classification of the presence of St. George in the image.

## Steps to run this classifier on your system

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

