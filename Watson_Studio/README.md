# WatsonStudio

This project is created within **IBM Watson Studio** as a way to learn to use its main capabilities: Assets Management, Data refinery, SPSS Modeler Flows, etc
\
\
.  
## 1- Create IBM account 
Using the free trial code provided by coursera https://cloud.ibm.com/

IBM Cloud uses resource groups as a way to organize your account resources in customizable groupings so that you can quickly assign users access to more than one resource at a time and visualize which resources are used in which project.  
\
\
.

## 2- Create and launch a Watson Studio Service
In the IBM Cloud navigate to _Catalog > Watson Studio_
https://cloud.ibm.com/catalog/services/watson-studio

Select the **Free** Lite plan and Create it.\
Launch IBM cloud pak for data.\
go to IBM cloud Pak for data.\
Continue.  
\
.   

## 3- Open a Watson Studio Service
---
In the IBM cloud, navigate to _Ressource List > AI / Machine Learning_  
The already created Watson studio instance is found in that location.  
Select it and launche it.  
\
.  

## 4- Create a Project in Watson Studio
---
Click on Create a project.  
On the Create a project page, click Create an empty project.  
Provide a Project Name and Description.  

You must also create storage for the project. Click Add.  
On the Cloud Object Storage page, click Create.  

On the New project page, note that the storage has been added, click Refresh and then click Create.  
\
.  

## 5- Add a notebook asset to the project
---
Click on _Assets > New asset_.  
In the list of asset types, click Jupyter Notebook Editor.  

On the New notebook page, click Blank and then add a name and optional description for the notebook. Specify the language as Python and runtime environment. Click Create.  

(Wait until the notebook appears. If you are interested, the Jupyter enterprise gateway has requested resources on the Kubernetes cluster IBM hosts for serving the Jupyter kernel backing your notebook.)  
\
.  

## 6- Jupyter notebook in Watson studio
---
Within a project in Watson studio, A jupyter notebook can be added as an asset.  
Once the notebook opened a dataset can be loaded to work on:

_File menu > load file >_ Search locally for a dataset to work with (also drag & drop)
	
>**Insert to code** : directly creates the pandas code to read the dataset. Options depend on notebook language.  

>**Create a job**: allows to run a notebook a given time, repeating schedules, etc


>**Environment**: See active environment. Select the environment of the notebook or Create a new environment. 
>Also Set:
>* Hardware size.  
>* Software configuration.
>* Runtime configuration for notebook editor.
>* Runtime configuration for flow editor.  

\
.  


## 7- Linking GitHub to Watson Studio
---
watson studio > settings > integration > generate a github personal access token.

Provide description - select the repo scope - generate the token - copie it
		
Paste token in the integration settings. It is validated when saving it to the profile settings.  
		
Within the IBM cloud:  
1- Go to Project > settings > paste the repo url > connect  
2- Go to asset tab > select the notebook to publish.
  * before publishing remember to remove the credential 
  * add taget pad or commit message > publish
  * get the link for the notebook, the repo, and the commits

Notice that to publish in github, watson need a branch called _master_ to exist. Create a child branch on Github if it is no already there. This branch will serve as he conection to Watson.

Alternatively, one can also publish a Gist (Git repository to be forked or cloned).  
\
.  
## 8-SPSS Modeler Flows
---
A project in watson can contain many type of assets such as datasets, notebooks, model and pipelines.
![project_assets](./Doc_images/assets.png)

Conveniently, pipelines can be easily built using SPSS Modeler Flows which allows for a visual pipeline building where data flows between different types of nodes:
* **_Data Source Nodes_**
* **_Data Manipulation Nodes_**: feature engineering, filtering, transformation, selection, etc
* **_Model building node_**: select the ML model to apply to the feed data
* **_Model nugget node_**: it activates once the pipeline is executed. contains informations about the model: parameter, metrics, performance, etc
* **_Model evaluation node_**: tables and charts.

There are also some other special nodes **_Auto Classifier_** and **_Auto Numeric_** which tries many ML moldels and allows to select the one with the best performance.  
\
My watson project contains the "Drug Study Example" pipeline flow from SPSS modeler:

<center>
    <img src=./Doc_images/SPSSmodeler_Drug-Study-Pipeline.png alt="SPSS modeler drug study example" width="70%">
</center>

which containt three model building nodes: a neural network, a decision tree and an auto numeric node (XGBoost tree model).  
\
\
.
## 9-Share C2W4_Ungraded-Exercice.ipynb
**IBM Data science Professional certificatee.**  
**Course-2**: Data Science Tools.  
**Week 4**: Ungraded exercice - Instructions can be found [here](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DS0105EN-SkillsNetwork/labs/FinalModule_Coursera/Final_Instruction_toolforDS.md.html?origin=www.coursera.org).  
\
\
.
## 10-Share DataScienceEcosystem.ipynb.ipynb
**IBM Data science Professional certificatee.**  
**Course-2**: Data Science Tools.  
**Week 4**: Graded exercice - Instructions can be found [here](https://author-ide.skills.network/render?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJtZF9pbnN0cnVjdGlvbnNfdXJsIjoiaHR0cHM6Ly9jZi1jb3Vyc2VzLWRhdGEuczMudXMuY2xvdWQtb2JqZWN0LXN0b3JhZ2UuYXBwZG9tYWluLmNsb3VkL0lCTURldmVsb3BlclNraWxsc05ldHdvcmstRFMwMTA1RU4tU2tpbGxzTmV0d29yay9sYWJzL0xhYnNfVjQvUGVlckdyYWRlZEFzc2lnbm1lbnQubWQiLCJ0b29sX3R5cGUiOiJpbnN0cnVjdGlvbmFsLWxhYiIsImFkbWluIjpmYWxzZSwiaWF0IjoxNjc3NTA2NDgxfQ.U66n7xz1X93Z5WxDBQx_Was8s8somnyFHSAEKiFdwGg).  
