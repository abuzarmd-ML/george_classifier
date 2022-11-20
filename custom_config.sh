############ Make a copy of coco.yaml, and configure it according to our use-case #############
## copy coco.yaml as custom_data.yaml
cp yolov7/data/coco.yaml yolov7/data/custom_data.yaml

sed -i '15,23 d' yolov7/data/custom_data.yaml 
echo 'names: [ "george" ]'  >> yolov7/data/custom_data.yaml
sed -i '/download:/d' yolov7/data/custom_data.yaml
sed -i '/test:/d' yolov7/data/custom_data.yaml
sed -i 's+train: ./coco/train2017.txt  # 118287 images+train: ./data/train+g' yolov7/data/custom_data.yaml
sed -i 's+val: ./coco/val2017.txt  # 5000 images+val: ./data/val+g' yolov7/data/custom_data.yaml

sed -i 's/nc: 80/nc: 1/' yolov7/data/custom_data.yaml


########### Make copy of yolov7.yaml in directory- cfg/training/ ###########

cp yolov7/cfg/training/yolov7.yaml yolov7/cfg/training/yolov7-custom.yaml
sed -i 's/nc: 80/nc: 1/' yolov7/cfg/training/yolov7-custom.yaml
