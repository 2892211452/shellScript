# 配合库xdotool实现对屏幕的点击

for((i=1; i>0; i++));  
do   
    echo $i
    sleep 5
    xdotool mousemove 824 838 click 1 
done  