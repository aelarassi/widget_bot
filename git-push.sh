echo "Enter your message"
read message
git add .
git commit -m "${message}"
if [ -n "$(git status - porcelain)" ];
then
 echo "IT IS CLEAN"
 git push -u origin master
else
 git status
 echo "Pushing data to remote server!!!"
fi