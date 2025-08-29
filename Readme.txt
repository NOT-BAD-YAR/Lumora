Automated Quiz Bot
Project Overview
This project is an automated quiz generation and delivery system. The bot captures user requests for quizzes on a specific subject and difficulty level, automatically generates the questions using Google's Gemini AI, converts the quiz into a PDF, and delivers it directly to the user's email. The entire process is built on a serverless and scalable Google Cloud architecture.

Features
Google Sheets Integration: Uses a Google Sheet as a database to manage quiz requests.

Gemini AI-Powered Generation: Automatically creates unique quiz questions and answers based on user input.

PDF Generation: Converts the quiz content into a clean, well-formatted PDF file.

Automated Email Delivery: Sends the quiz PDF to the user's email address via a secure SMTP connection.

Serverless Architecture: Deployed on Google Cloud Run, making the service highly scalable, cost-effective, and always available.

Event-Driven Trigger: The entire process is initiated automatically by a Google Apps Script trigger whenever a new request is added to the Google Sheet.

Architecture
The system's architecture is event-driven and serverless, connecting three main components: a front-end trigger, a back-end web service, and the core automation logic. .

Front-End Trigger: The user's request is submitted to a Google Sheet. A Google Apps Script acts as a trigger, detecting the new row and sending a signal to the back-end service.

Back-End Service: A Python Flask application, packaged as a Docker container, is hosted on Google Cloud Run. This service listens for the trigger signal and executes the core automation logic.

Core Automation Logic: The Python script handles all the key tasks: reading the spreadsheet data, calling the Gemini API for content, creating the PDF with FPDF, and sending the email.

Technology Stack
Google Cloud Platform (GCP):

Cloud Run: Serverless platform for hosting the Python application.

Cloud Build: Service for building the Docker container image.

Artifact Registry: Repository for storing the Docker image.

Google Apps Script: The event-driven trigger for the automation.

Core Libraries:

Python: The primary programming language.

Flask: A micro web framework for the back-end service.

gspread: Python library to interact with Google Sheets.

google-generativeai: Python library for connecting to the Gemini API.

FPDF: Python library for generating PDF documents.

smtplib: Python's built-in library for sending emails.