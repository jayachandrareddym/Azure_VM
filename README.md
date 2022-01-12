# Azure_VMI  
I have created this repo with terraform configuration file and yml file to create a VM in azure.

Terraform config files containes provider and main config [rg, vnet and vm] and required variables.
azure_pipeline yaml file consits of teraaform init, plan, apply and destroy [there is powe shell script by which it wil check for any changes before it apply]

***Make sure you use your own subscription client id, secret and tenant id to provison this resources through provider config file***.

You have to create a service connection in Azure Devops [ADO] by which this will create service principal in azure same you have to use in pipeline yaml file then only this will work.
Even after using sercice connection you have to give priviliges to client id to provison resources specified in main tf config file.

**To do navigate to ADO-> organisation -> Projects -> Pipeline or project settings-> click on the service connection-> manage service connection -> it will naigate to your AZ portal and give required** permission.

**You can directly navigate to your subscription in azure portal and choose IAm and add role assignment choose your appropriate service connection and assigin required priviliges**.

Now its time to run [manul/trigger] your build pipeline and your Vm will create.

**Login to Vm and enjoy with your exploring ..!**

To destory same setup I have added destroy task in same pipeline yaml config you can use same. Make sure if you are using as is it will create and delete provisioned resources.
