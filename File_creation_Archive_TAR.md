# 1. Create a folder with your name on the server xxxxxxxxxxx In the folder with your name, create the script task_NAME.sh, where NAME is your name.
# touch task_ALLA.sh 

# 2. The script should create 10 files with a serial number and creation date. 1_10.02.25, 2_10.02.25, 3_10.02.25 .. 10_10.02.25


# Get the current date in the format DD.MM.YY (for example, 04.20.23)
current_date=$(date +'%d.%m.%y')

# Loop to create 10 files
for i in {1..10}
do
  # Create a file with a serial number and date
  touch "${i}_${current_date}"
done

echo "10 файлов успешно созданы."


#3. Create a new task in the scheduler that will run your script every 15 minutes.
    crontab -e
    */15 * * * * /opt/111124-ptm/AllaVinogradova/HW_13/task_ALLA.sh


# 4. Create an archive with files from p2., add to it the history of commands that you have executed.
    tar -cf HW_13.tar 1_10.02.25 2_10.02.25 3_10.02.25 4_10.02.25 5_10.02.25 6_10.02.25
    tar -rf HW_13.tar -C ~ .bash_history


#5. Comment out the task line in the scheduler (add '#' to the beginning of the line with your task) to disable the task but keep it “quickly accessible”
    #*/15 * * * * /opt/111124-ptm/AllaVinogradova/some_folder/task_ALLA.sh
