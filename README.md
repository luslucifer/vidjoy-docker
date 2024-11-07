
# Vidjoy

Welcome to Vidjoy! This latest version introduces a partnership program, allowing users to become partners and run their own Vidjoy instances.





## What is Vidjoy?

**Vidjoy** is an innovative, scalable media streaming platform designed to allow users to host and manage their own streaming instances. Vidjoy’s infrastructure leverages Docker for easy deployment, making it accessible for users who want a customizable, self-hosted media solution. With the new **Partnership Program**, users can set up independent Vidjoy instances and join a collaborative network to enhance streaming performance, uptime, and accessibility across the globe.

Vidjoy supports a seamless integration with **The Movie Database (TMDB)** API, which provides access to detailed information about movies, TV shows, and multimedia content, giving users a complete and personalized media experience. Each instance is equipped to handle high loads and deliver a responsive interface for optimal viewing experiences.

## Key Features

- **Distributed Hosting**: Run multiple Vidjoy instances to reduce downtime and improve streaming speeds.
- **Partnership Program**: Join other partners in a shared ecosystem, where each server’s uptime and response times contribute to overall network performance.
- **TMDB Integration**: Easily integrate with TMDB for content metadata, making it simple to manage and present movies, shows, and other media.
- **Self-hosted Media Solution**: Vidjoy offers a fully customizable media streaming platform that you control, providing privacy and flexibility.
- **Future Monetization**: Vidjoy plans to introduce advertisements, offering partners a chance to generate revenue based on the server’s request load.

## How It Works

Vidjoy uses Docker containers to streamline the setup process and isolate each service needed to run a streaming platform, such as the backend, frontend, and database. After setting up Vidjoy with Docker Compose, each instance can be configured using environment variables, allowing for a personalized and secure streaming environment. Partners can connect servers to Vidjoy’s network, contributing to a global media distribution system that balances load and optimizes user experience based on location.

By becoming a Vidjoy partner, users help maintain a resilient and scalable network, ultimately delivering faster, more reliable access to media content for all viewers.

## Who Is Vidjoy For?

Vidjoy is ideal for:

- **Media Enthusiasts**: Users who want a private, self-managed streaming service.
- **Developers and Tech Enthusiasts**: Individuals interested in hosting their own streaming servers or enhancing the platform with custom integrations.
- **Small Media Businesses**: Organizations seeking an affordable, scalable alternative to proprietary streaming solutions.
- **Content Creators and Influencers**: People looking to host exclusive video content for fans, without relying on third-party services.

With Vidjoy, users gain full control over their streaming setup while benefiting from a collaborative and distributed network. This combination of autonomy and scalability makes Vidjoy an exciting solution for the future of media hosting.




## Getting Started

To host your own Vidjoy instance, follow these steps:

### Prerequisites

- **Docker**: Ensure Docker is installed on your system. You can follow the [Docker installation guide](https://docs.docker.com/get-docker/) if needed.
- **A VPS with 4GB RAM**: Required to run Vidjoy smoothly.

### Installation Steps

1. **Clone the Repository**:
   Clone the Vidjoy Docker repository to get started.

   ```bash
   git clone https://github.com/luslucifer/vidjoy-docker.git
   ```

2. **Navigate to the Project Directory**:
   Move into the project directory.

   ```bash
   cd vidjoy-docker
   ```

3. **Set Up Environment Variables**:
   In the `vidjoy-docker` directory, copy the `.env.example` file to create a `.env` file. This will serve as your configuration file.

   ```bash
   cp .env.example .env
   ```

   - Open the `.env` file and replace placeholders with your specific details, like the TMDB API key. Below is the format of `.env.example`:

     ```plaintext
     # .env.example

     # TMDB API Key
     TMDB_KEY=your_tmdb_api_key_here               # Replace with your actual TMDB API key
     TMDB_API=your_tmdb_api_key_here               # Duplicate entry for any additional TMDB needs

     # Protocol Configuration
     PROTOCOL=http                                 # Use 'http' for local development, 'https' if you have SSL configured

     # Database URLs
     DATABASE_URL=your_database_url_here           # Prisma database URL
     DIRECT_URL=your_direct_database_url_here      # Direct database connection string

     # Kinde Authentication
     KINDE_CLIENT_ID=your_kinde_client_id
     KINDE_CLIENT_SECRET=your_kinde_client_secret
     KINDE_ISSUER_URL=your_kinde_issuer_url
     KINDE_SITE_URL=http://localhost
     KINDE_POST_LOGIN_REDIRECT_URL=http://localhost/dashboard
     KINDE_POST_LOGOUT_REDIRECT_URL=http://localhost

     # TMDB API Configuration
     TMDB_BASE=https://api.themoviedb.org/3
     NEXT_PUBLIC_BASE_URL=http://localhost
     NEXT_PUBLIC_AD_SCRIPT=your_ad_script_to_display_ads

     # Nginx and Proxy Configuration
     HOST=0.0.0.0
     # PORT=80
     CORSANYWHERE_WHITELIST=https://moviekex.com,https://developer-tools.jwplayer.com,https://yestream.vidsrc.nl

     # Frontend Configuration
     NEXT_PUBLIC_API=https://api.example.com

     # Watchtower Configuration
     WATCHTOWER_CLEANUP=true
     WATCHTOWER_POLL_INTERVAL=300

     # Redis Configuration
     REDIS_HOST=redis
     REDIS_PORT=6379
     ```

4. **Start the Project with Docker Compose**:
   Run the following command to start Vidjoy in detached mode.

   ```bash
   docker compose up -d
   ```

5. **Access Vidjoy**:
   Once started, you should be able to access Vidjoy at `http://localhost` (or `https://localhost` if using SSL) in your browser.

---

## Partnership Program

Vidjoy now offers a partnership program where users can run their own instances and help grow the Vidjoy ecosystem.

### Benefits of Partnership

- **Improved Uptime**: As more servers join, the uptime improves. With distributed instances, downtime will be nearly zero.
- **Increased Speed**: A greater number of servers enhances request processing speeds.
- **Smart Request Handling**: Incoming requests are processed intelligently. For example, if a server is in the USA and requests come from the USA, those servers handle the requests, optimizing performance.

### Upcoming Features

Soon, we’ll introduce advertisements, allowing contributors to earn revenue based on server request volume. This program will create an additional income stream for Vidjoy ecosystem participants.

By becoming a partner, you contribute to a more robust and scalable platform for all Vidjoy users!

---

## Maintenance Commands

For ongoing management, here are some helpful Docker commands:

- **Stop Containers**:
  ```bash
  docker compose down
  ```

- **Restart Containers**:
  ```bash
  docker compose restart
  ```

- **View Logs**:
  ```bash
  docker compose logs -f
  ```

---

Thank you for being a part of Vidjoy! We look forward to building a more connected and efficient streaming platform together.
```
