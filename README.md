# Netflix Clone

Netflix Clone is a mobile application built using swift that aims to replicate the popular streaming platform, Netflix. It allows users to browse and watch movies, TV shows.

![Ekran_Kaydı_2023-07-02_19_55_17_AdobeExpress](https://github.com/abdulkerimcan/NetflixClone/assets/79968953/6f7892f4-92b8-43e3-8a2a-f1fa274f18c9)
## Features

- Search functionality: Users can search for specific titles.
- Downloaded content: Users can download movies and TV shows and they will be saved on the local.
- Play video: Users can play trailer videos directly within the application thanks to Youtube.
- Responsive design: The application is designed to be responsive and accessible on different devices.
-

## Technologies Used

- **Swift:** The programming language utilized for developing the iOS application.
- **UIKit Framework:** The iOS framework employed to provide core components and functionalities for constructing the user interface.
- **SDWebImage:** An open-source library employed to simplify the process of loading and caching remote images in iOS apps.
- **TMDb API:** The TMDb API (The Movie Database API) employed to fetch movie data, including details and images, to populate the app with the most up-to-date information.
- **YouTube API:** The YouTube API used to retrieve video content from YouTube and integrate it into the application.

## Getting Started

To get started with the Netflix Clone project, follow these steps:

1. Clone the repository:

   ```
   git clone https://github.com/abdulkerimcan/NetflixClone.git
   ```

2.  Set up your TMDB API Key:

   - Obtain an API key from the [The Movie Database website](https://developer.themoviedb.org/).
   - Obtain an API key from the [The Google Cloud Console website](https://console.cloud.google.com/apis/credentials/).
   - Enable YouTube Data API v3
   - Set the API key as an variable in the Xcode project). To do this:
     - Open the project in Xcode.
     - Go to the "Managers" folder and select "APICaller".
     - Set the "API_KEY" with your TMDB API Key.
     - Set the "YOUTUBE_API_KEY" with your Youtube API key.
     
3. Build and run the project on a simulator or a physical device

## License

This project is licensed under the MIT License. You are free to modify, distribute, and use the code for personal and commercial purposes.
