#pip2 install simplejson
#pip2 install psutil
#pip2 install httplib
#pip2 install mimetypes

path=`pwd`
command1="alias emg='python "
command2="alias whois='python "
command3="alias vt='python "
files1="/emergency.py'"
files2="/mywhois.py"
files3="/virustotal.py"
var1=$command1$path
var2=$var1$file1
#var2={$command2}{$path}{$file2}
#var3={$command3}{$path}{$file3}
echo $var2
