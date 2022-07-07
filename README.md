# global-logic-interview-task
Robot framework interview task for Global Logic.

## 1. How to run?
Download the files to a folder on your local desktop. Then, open the command prompt by typing 'cmd' in the address bar of the same folder. 

### 1.1. Create Virtual Environment
Now, create a virtual environment by entering the following command in the command prompt:
```
python -m venv ./venv
```

### 1.2. Activate Virtual Environment
Enter the following command in the command prompt to activate the virtual environment:
```
.\venv\Scripts\activate.bat
```

### 1.3. Install Required Libraries
Enter the following command in the command prompt to install the required modules required to run the test framework:
```
pip install -r requirements.txt
```

### 1.4. Run the Test Suite
Enter the following command in the command prompt to run the test suite:
```
robot test-suite.robot
```

## 2. Results
As a result of running the test suite, two HTML files will be created in the same directory as the test suite.<br />
The test report will be in the file 'report.html'.<br />
The test logs will be in the file 'log.html'.
