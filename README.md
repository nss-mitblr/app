# NSS MIT-BLR Volunteer App

> ⚠️ **Notice:** This repository currently acts as a proof-of-concept, not an MVP or a production-ready application. For further information on the project's status, please refer to [History](#history).

![Cover Image](/assets/meta/cover-image.png)

## Contributors

- Abhigyan Tripathi [(GitHub)](https://github.com/abhigyantrips) [(LinkedIn)](https://linkedin.com/in/abhigyantrips)
- Satyajitsinh Digvijaysinh Jhala [(GitHub)](https://github.com/SatyajitsinhJhala) [(LinkedIn)](https://www.linkedin.com/in/satyajitsinh-jhala-634057257/)

## History

On 13th August, 2024, the team commenced work on an application for the volunteers of NSS MIT-BLR in order to centralize their event contribution and resource management. This application was created with the aim to streamline administrative workflows and reduce the time spent in shift and volunteer hour calculation.

The project was archived on 20th February, 2025 after an elongated period of inactivity from the Core Committee, and inability to provide the hosting resources for the API that accompanies the application.

While we were unable to implement this project successfully, this repository remains public to provide other such endeavours with a headstart.

## Application Walkthrough

![App Screenshots](/assets/meta/example-screenshots.png)

The application has three main screens:

- **Events:** This screen lists out all the current events being hosted by the chapter, along with the option to volunteer for the same. As administrators can set a hard limit on the number of volunteers required, the button is disabled on reaching the volunteer limit.

- **Home:** This is the screen the user is greeted with upon login. It has four main options that are currently functional:

	1. **"Our Website":** Redirects to the NSS website.
	2. **Office Bearers:** Displays a list of the current office bearers, as fetched from the [Config. GitHub Repository](https://github.com/nss-mitblr/config).
	3. **"Partner With Us":** Opens the Outlook application with a new email to NSS, along with starter subject and content.
	4. **Resource Library:** Redirects to an external repository as specified by the chapter.

- **Profile:** This screen primarily displays the volunteer hours of the current user, both on-ground and off-ground. There is also a "Volunteer History" available to view a list of all their past contributions to the chapter.

## Development

Refer to [Flutter's documentation](https://docs.flutter.dev/get-started/install) for more information on how to get started with installation and local development of this application.