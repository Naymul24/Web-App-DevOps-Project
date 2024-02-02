# Web-App-DevOps-Project

Welcome to the Web App DevOps Project repo! This application allows you to efficiently manage and track orders for a potential business. It provides an intuitive user interface for viewing existing orders and adding new ones.

## Table of Contents

- [Features](#features)
- [Getting Started](#getting-started)
- [Technology Stack](#technology-stack)
- [Contributors](#contributors)
- [License](#license)

## Features

- **Order List:** View a comprehensive list of orders including details like date UUID, user ID, card number, store code, product code, product quantity, order date, and shipping date.
  
![Screenshot 2023-08-31 at 15 48 48](https://github.com/maya-a-iuga/Web-App-DevOps-Project/assets/104773240/3a3bae88-9224-4755-bf62-567beb7bf692)

- **Pagination:** Easily navigate through multiple pages of orders using the built-in pagination feature.
  
![Screenshot 2023-08-31 at 15 49 08](https://github.com/maya-a-iuga/Web-App-DevOps-Project/assets/104773240/d92a045d-b568-4695-b2b9-986874b4ed5a)

- **Add New Order:** Fill out a user-friendly form to add new orders to the system with necessary information.
  
![Screenshot 2023-08-31 at 15 49 26](https://github.com/maya-a-iuga/Web-App-DevOps-Project/assets/104773240/83236d79-6212-4fc3-afa3-3cee88354b1a)

- **Data Validation:** Ensure data accuracy and completeness with required fields, date restrictions, and card number validation.

### Additional Features

- **Delivery Date:** Adding Delivery Date Information Column

The initial implementation involved the addition of delivery columns to enhance specific functionalities in the application. However, the feature was reverted due to its non-essential nature. Below is a detailed guide on how the feature worked and its potential utilisation.

The app.py was modified alongside the orders.html file to incorporate a new feature – the addition of a delivery date information column to the application. The changes were made to enhance the functionality of the application and provide users with valuable information about delivery timelines. Now the company can also monitor the dates the deliveries have been made and ensure fulfilment.

*Developers' Guide:*
- Adding the Delivery Column
1. Create a new feature branch to implement the additional coding. This branch isolates the code changes required to the include the delivery date column. Ensure all following steps are tracked via git
2. The app.py file was modified. Update the app.py file with the following code as seen in this file [CodeChanges] (https://github.com/Naymul24/Web-App-DevOps-Project/blob/main/code_changes.txt)
3. The orders.html file was modified to add the additional column to the user web page. Update the orders.html file with the following code as seen in this file [CodeChanges] (https://github.com/Naymul24/Web-App-DevOps-Project/blob/main/code_changes.txt)

- Removing Delivery Columns
1. The feature was then not necessary so was removed by utilising the tracked code by git. Create a new feature branch to remove the additional coding.
2. Find the commit hash of the specific change to revert. 
3. Revert back to that state using the git revert command


While the feature was reverted due to specific considerations, the documentation should stress the potential for future use and the importance of understanding the feature for ongoing development or enhancements.

### Containerisation with Docker


This involved containerizing the application using Docker. This process facilitates seamless deployment and scalability by encapsulating the application and its dependencies into isolated containers.

- **Containerisation Process:**
**Dockerfile Creation:**
Dockerfile was created containing all the commands the user requires to call on the command line to assemble an image including for pulling necessary base images, setting up the working directory, and installing dependencies.
**Docker Build:**
The application was packaged into the Docker image by copying relevant files and directories.
**Send to the Hub:**
The image was tagged and pushed to the hub to be opened by the user.




### Prerequisites

For the application to succesfully run, you need to install the following packages:

- flask (version 2.2.2)
- pyodbc (version 4.0.39)
- SQLAlchemy (version 2.0.21)
- werkzeug (version 2.2.3)

### Usage

To run the application, you simply need to run the `app.py` script in this repository. Once the application starts you should be able to access it locally at `http://127.0.0.1:5000`. Here you will be meet with the following two pages:

1. **Order List Page:** Navigate to the "Order List" page to view all existing orders. Use the pagination controls to navigate between pages.

2. **Add New Order Page:** Click on the "Add New Order" tab to access the order form. Complete all required fields and ensure that your entries meet the specified criteria.

## Technology Stack

- **Backend:** Flask is used to build the backend of the application, handling routing, data processing, and interactions with the database.

- **Frontend:** The user interface is designed using HTML, CSS, and JavaScript to ensure a smooth and intuitive user experience.

- **Database:** The application employs an Azure SQL Database as its database system to store order-related data.

## Contributors 

- [Maya Iuga]([https://github.com/yourusername](https://github.com/maya-a-iuga))

## License

This project is licensed under the MIT License. For more details, refer to the [LICENSE](LICENSE) file.
