# global-logic-interview-task
Robot framework interview task for Global Logic.

## How to run?
Download the files to a folder on your local desktop. Then, open the command prompt by typing 'cmd' in the address bar of the same folder. 

### Create Virtual Environment
Now, create a virtual environment by entering the following command in the command prompt:
'''
python -m venv ./venv
'''

### Activate Virtual Environment
Enter the following command in the command prompt to activate the virtual environment:
'''
.\venv\Scripts\activate.bat
'''

### Install Required Libraries
Enter the following command in the command prompt to install the required modules required to run the test framework:
'''
pip install -r requirements.txt
'''

### Run the Test Suite
Enter the following command in the command prompt to run the test suite:
'''
robot test-suite.robot
'''

## Results
As a result of running the test suite, two HTML files will be created in the same directory as the test suite.
The test report will be in the file 'report.html'.
The test logs will be in the file 'log.html'.
