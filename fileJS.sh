# 用来监视文件变化


function whether_changed(){
    local file_path='/home/lwl/Study/latex/test.tex' #要监视文件的路径
    local check_time=2 #等待时间
    while [[ true ]]; do
        file_old_stat="`stat ${file_path}`"
        sleep ${check_time}
        file_new_stat="`stat ${file_path}`"
        # echo $file_new_stat
        # echo $file_old_stat
        if [[ `echo ${file_old_stat}` == `echo ${file_new_stat}` ]]; then
            echo "### In ${check_time}s ,${file_path} does not change ###"
            #没有改变
        else
            #echo "#### Wait ${check_time}s ####"
            #紧接需要执行的任务
            xelatex test.tex
        fi
    done

}


whether_changed