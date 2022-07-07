*** Settings ***	
Documentation     A test suite using Python and Robot Framework.
...
Library		main.py

*** Variables ***
@{VALID_EQ_NUMS}	${-50}	${10}	${80}
@{INVALID_EQ_NUMS}	${-110}	${13}	${110}
@{VALID_BVA_NUMS}	${-99.99}	${-0.01}	${0.01}	${12.99}	${13.01}	${99.99}
@{INVALID_BVA_NUMS}	${-100.01}	${100.01}

*** Test Cases ***
Valid Equivalence Partition
	[Documentation]	This test case verifies that the output is correctly received for valid equivalence partitions. Valid partition ranges: [-100, 0), (0, 13), (13, 100]
	FOR	${num}	IN	@{VALID_EQ_NUMS}
		${result} =    output 	${num}
		${expected_result}	Set Variable	${${10}/${num}}
		Should Be Equal    ${result}     ${expected_result}
	END

Invalid Equivalence Partition
	[Documentation]	This test case verifies that a system error is raised for invalid equivalence partitions. Invalid partition ranges/values: [-infinity, -100), 13, (100, infinity]
	FOR	${num}	IN	@{INVALID_EQ_NUMS}
		${err_msg}=  Run Keyword And Expect Error  *  output	${num}
		Should be Equal	${err_msg}	System error
	END

Valid Boundary Value Analysis
	[Documentation]	This test case verifies that the output is correctly received for valid boundary values. Valid boundary values: -99.99, -0.01, 0.01, 12.99, 13.01, 99.99
	FOR	${num}	IN	@{VALID_BVA_NUMS}
		${result} =    output 	${num}
		${expected_result}	Set Variable	${${10}/${num}}
		Should Be Equal    ${result}     ${expected_result}
	END

Invalid Boundary Value Analysis
	[Documentation]	This test case verifies that a system error is raised for invalid boundary values. Invalid boundary values: -100.01, 100.01
	FOR	${num}	IN	@{INVALID_BVA_NUMS}
		${err_msg}=  Run Keyword And Expect Error  *  output	${num}
		Should be Equal	${err_msg}	System error
	END
	
Special Case: Division by Zero Error
	[Documentation]	This test case verifies that the ZeroDivisionError is raised when the argument to the output function is 0.
	${err_msg}=  Run Keyword And Expect Error  *  output	${0}
	Should be Equal	${err_msg}	ZeroDivisionError: division by zero

Error Guessing: Argument cannot be string
	[Documentation]	This test case verifies that a TypeError is raised when the argument to the output function is a string.
	${err_msg}=  Run Keyword And Expect Error  *  output	10
	Should be Equal	${err_msg}	TypeError: '>' not supported between instances of 'str' and 'int'

Error Guessing: Argument cannot be NoneType
	[Documentation]	This test case verifies that a TypeError is raised when the argument to the output function is NoneType.
	${err_msg}=  Run Keyword And Expect Error  *  output	${None}
	Should be Equal	${err_msg}	TypeError: '>' not supported between instances of 'NoneType' and 'int'
