# Introduction 

SeleniumLibrary
===============



    SeleniumLibrary_ is a web testing library for `Robot Framework`_ that
    utilizes the Selenium_ tool internally. The project is hosted on https://dev.azure.com/lewis-group/RedLewis-Utilities/_git/RobotFrameworkTemplate

    SeleniumLibrary works with Selenium 3 and 4. It supports Python 2.7 as well as
    Python 3.6 or newer. In addition to the normal Python_ interpreter, it
    works also with PyPy_ and Jython_. Unfortunately Selenium_ is not
    currently supported by IronPython_ and thus this library does not work with
    IronPython either.

    SeleniumLibrary is based on the `old SeleniumLibrary`_ that was forked to
    Selenium2Library_ and then later renamed back to SeleniumLibrary.
    See the Versions_ and History_ sections below for more information about
    different versions and the overall history.

    .. image:: https://img.shields.io/pypi/v/robotframework-seleniumlibrary.svg?label=version
    :target: https://pypi.python.org/pypi/robotframework-seleniumlibrary
    
    .. image:: https://img.shields.io/pypi/dm/robotframework-seleniumlibrary.svg
    :target: https://pypi.python.org/pypi/robotframework-seleniumlibrary

    .. image:: https://img.shields.io/pypi/l/robotframework-seleniumlibrary.svg
    :target: https://www.apache.org/licenses/LICENSE-2.0

    .. image:: https://github.com/robotframework/SeleniumLibrary/workflows/SeleniumLibrary%20CI/badge.svg
        :target: https://github.com/robotframework/SeleniumLibrary/actions?query=workflow%3A%22SeleniumLibrary+CI%22


Keyword documentation
=====================

    See `keyword documentation`_ for available keywords and more information
    about the library in general.
    .. https://robotframework.org/#libraries


# Getting Started
TODO: Guide users through getting your code up and running on their own system. In this section you can talk about:

1.	Installation process

    You will need to Install Visual studio Code once VS code is installed, open new terminal 

    The recommended installation method is using pip_:: then intsll Robot framework.

        pip install --upgrade robotframework-seleniumlibrary

    Running this command installs also the latest Selenium and Robot Framework
    versions, but you still need to install `browser drivers`_ separately.
    The ``--upgrade`` option can be omitted when installing the library for the
    first time.

    Those migrating from Selenium2Library_ can install SeleniumLibrary so that
    it is exposed also as Selenium2Library::

        pip install --upgrade robotframework-selenium2library

    The above command installs the normal SeleniumLibrary as well as a new
    Selenium2Library version that is just a thin wrapper to SeleniumLibrary.
    That allows importing Selenium2Library in tests while migrating to
    SeleniumLibrary.

    Browser drivers
    ===============

    After installing the library, you still need to install browser and
    operating system specific browser drivers for all those browsers you
    want to use in tests. These are the exact same drivers you need to use with
    Selenium also when not using SeleniumLibrary. More information about
    drivers can be found from `Selenium documentation`__.

    The general approach to install a browser driver is downloading a right
    driver, such as ``chromedriver`` for Chrome, and placing it into
    a directory that is in PATH__. Drivers for different browsers
    can be found via Selenium documentation or by using your favorite
    search engine with a search term like ``selenium chrome browser driver``.
    New browser driver versions are released to support features in
    new browsers, fix bug, or otherwise, and you need to keep an eye on them
    to know when to update drivers you use.

    Alternatively, you can use a tool called WebdriverManager__ which can
    find the latest version or when required, any version of appropriate
    webdrivers for you and then download and link/copy it into right
    location. Tool can run on all major operating systems and supports
    downloading of Chrome, Firefox, Opera & Edge webdrivers.

    Here's an example:

    .. code:: bash

        pip install webdrivermanager
        webdrivermanager firefox chrome --linkpath /usr/local/bin
    for more info: There is a documentation on how to install robot framework on the N:drive  N:\robotframework  [install.txt]


2.	Software dependencies


3.	Latest releases

    SeleniumLibrary has over the years lived under SeleniumLibrary and
    Selenium2Library names and different library versions have supported
    different Selenium and Python versions. This is summarized in the table
    below and the History_ section afterwards explains the project history
    a bit more.

    ==================================  ==========================  ==========================  ===============
                Project                     Selenium Version             Python Version         Comment
    ==================================  ==========================  ==========================  ===============
    SeleniumLibrary 2.9.2 and earlier   Selenium 1 and 2            Python 2.5-2.7              The original SeleniumLibrary using Selenium RC API.
    Selenium2Library 1.8.0 and earlier  Selenium 2 and 3            Python 2.6-2.7              Fork of SeleniumLibrary using Selenium WebDriver API.
    SeleniumLibrary 3.0 and 3.1         Selenium 2 and 3            Python 2.7 and 3.3+         Selenium2Library renamed and with Python 3 support and new architecture.
    SeleniumLibrary 3.2                 Selenium 3                  Python 2.7 and 3.4+         Drops Selenium 2 support.
    SeleniumLibrary 4.0                 Selenium 3                  Python 2.7 and 3.4+         Plugin API and support for event friging webdriver.
    SeleniumLibrary 4.1                 Selenium 3                  Python 2.7 and 3.5+         Drops Python 3.4 support.
    SeleniumLibrary 4.2                 Selenium 3                  Python 2.7 and 3.5+         Supports only Selenium 3.141.0 or newer.
    SeleniumLibrary 4.4                 Selenium 3 and 4            Python 2.7 and 3.6+         New PythonLibCore and dropped Python 3.5 support.
    Selenium2Library 3.0                Depends on SeleniumLibrary  Depends on SeleniumLibrary  Thin wrapper for SeleniumLibrary 3.0 to ease transition.
    ==================================  ==========================  ==========================  ===============

4.	API references

# Build and Test
TODO: Describe and show how to build your code and run the tests.

#  Project Structure

    * data folder - In this folder you will find all test data to pass to your keywords. e.g csv, xml and txt files.
    * results folder- In this folder you will find your test run results after test case execution. you will be able to view tests that passed and failed also see the logs.
    * Scripts folder - In this folder you will store all the project tests suites.
    * resources folder - In this folder you will store / find all our reusable key words that we can call to perform some tasks. note these are keywords that are re-usable to   other   scripts that you create (usually we call these in our test cases).
    * env.bat - This is the batch file which sets our enviroment variables.
    * test.bat - This is the batch file with commands to run our tests
    * run.bat  - Calls both our batch files to execute our test cases (pass required variables tags act).


# to run the application

    * on Termina cd to tests

    * then run command - run.bat



# Global variables 

    * stored in Enviroment.robot script

# Contribute
TODO: Explain how other users and developers can contribute to make your code better.

Interested to contribute to Robot Framework? Great! In that case it is a good start by looking at the Contribution guidelines. 

When using Robot Framework, it is generally recommended to write as
easy-to-understand tests as possible. The keywords provided by
SeleniumLibrary are pretty low level, though, and often require
implementation specific arguments like element locators to be passed
as arguments. It is thus typically a good idea to write tests using
Robot Framework's higher level keywords that utilize SeleniumLibrary
keywords internally. This is illustrated by the following example
where SeleniumLibrary keywords like ``Input Text`` are primarily
used by higher level keywords like ``Input Username``.

.. code:: robotframework

    *** Settings ***
    Documentation     Simple example using SeleniumLibrary.
    Library           SeleniumLibrary

    *** Variables ***
    ${LOGIN URL}      http://localhost:7272
    ${BROWSER}        Chrome

    *** Test Cases ***
    Valid Login
        Open Browser To Login Page
        Input Username    demo
        Input Password    mode
        Submit Credentials
        Welcome Page Should Be Open
        [Teardown]    Close Browser

    *** Keywords ***
    Open Browser To Login Page
        Open Browser    ${LOGIN URL}    ${BROWSER}
        Title Should Be    Login Page

    Input Username
        [Arguments]    ${username}
        Input Text    username_field    ${username}

    Input Password
        [Arguments]    ${password}
        Input Text    password_field    ${password}

    Submit Credentials
        Click Button    login_button

    Welcome Page Should Be Open
        Title Should Be    Welcome Page


The above example illustrates using Robot Framework and SeleniumLibrary.
For more information about Robot Framework test data syntax in
general see the `Robot Framework User Guide`_.
.. https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html


If you want to learn more about creating good readme files then refer the following [guidelines](https://docs.microsoft.com/en-us/azure/devops/repos/git/create-a-readme?view=azure-devops). You can also seek inspiration from the below readme files:
- [ASP.NET Core](https://github.com/aspnet/Home)
- [Visual Studio Code](https://github.com/Microsoft/vscode)
- [Chakra Core](https://github.com/Microsoft/ChakraCore)