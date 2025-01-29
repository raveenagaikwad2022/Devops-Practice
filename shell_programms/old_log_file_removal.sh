read -p "Enter the directory path to remove older log files" dir
if [-d $dir ];then
 find $dir -type f -name "*.log" -mtime +7 -exec rm -f {} \;
  echo "Files are removed"
else
"echo files are not older than 7 days"
fi