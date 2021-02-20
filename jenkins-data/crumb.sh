crumb=$(curl -u "durgesh:durgesh" -s 'http://192.168.1.10:8080/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)')
# curl -u "durgesh:durgesh" -H "$crumb" -X POST  http://192.168.1.10:8080/job/remote-task/build?delay=0sec
curl -u "durgesh:durgesh" -H "$crumb" -X POST  http://192.168.1.10:8080/job/DB_Backup_AWS_Upload/buildWithParameters?DBHOST=db_host&DBNAME=employees&AWSKEYID=AKIA32JTEKGAERFY453M&AWSBUCKET=jenkins-mysql-backup-durgesh
