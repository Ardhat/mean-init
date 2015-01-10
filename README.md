# mean-init
<h4> MEAN stack 4 pi initialization script <h4/>

Pulls and Installs pre-compilled ARM versions of Nodejs and MongoDB (Mongo4Pi) from seperate repos

Mongo4Pi > https://github.com/svvitale/mongo4pi <br/>
Node > http://node-arm.herokuapp.com/node_latest_armhf.deb

<h4> To Run <h4/>
git clone https://github.com/Ardhat/mean-init.git <br/>
cd mean-init <br/>
bash mean-init.sh <br/>

<h4> Troubleshooting <h4/>
if mongodb fails to start on boot, which you can check like this: <br/>
sudo /etc/init.d/mongod status <br/>

delete mongod.lock file <br/>
rm /var/lib/mongodb/mongod.lock

and then start it <br/>
sudo /etc/init.d/mongod start
