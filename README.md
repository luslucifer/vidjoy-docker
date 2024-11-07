
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

### Explanation of Environment Variables

The server and site can be built and run successfully without the variables marked as _(Optional)_, but the site appears best when you use all of them

- **`DIRECT_URL`**: The direct URL to connect to your PostgreSQL database. You can get one from [supabase](https://supabase.com).

- **`DATABASE_URL`**: Points to your Prisma Accelerate URL, using a PostgreSQL database. You can generate the URL from [prisma](https://console.prisma.io).

- **`KINDE_POST_LOGIN_REDIRECT_URL`**: _(Optional)_ The URL to which users are redirected after logging in, e.g., `http://localhost:3000/dashboard`.

- **`KINDE_POST_LOGOUT_REDIRECT_URL`**: _(Optional)_ The URL to which users are redirected after logging out, e.g., `http://localhost:3000`.

- **`KINDE_SITE_URL`**: _(Optional)_ The main website URL, typically `http://localhost:3000` for local development or your production URL when deployed.

- **`NEXT_PUBLIC_BASE_URL`**: The base URL of your website, which is used in the frontend. This is usually the same as `KINDE_SITE_URL`.

- **`TMDB_API`**: Your API key from The Movie Database (TMDB), allowing access to movie and TV series data.

- **`TMDB_BASE`**: The base URL for TMDB API requests, set to `https://api.themoviedb.org/3`.

- **`KINDE_CLIENT_ID`**: _(Optional)_ Your Kinde client ID, required for user authentication and authorization.

- **`KINDE_CLIENT_SECRET`**: _(Optional)_ Your Kinde client secret, used in conjunction with the client ID for secure authentication.

- **`NEXT_PUBLIC_AD_SCRIPT`**: _(Optional)_ The script to display ads on your website. This allows ad integrations by inserting the script here.

- **`KINDE_ISSUER_URL`**: _(Optional)_ The issuer URL from Kinde, used for verifying tokens and managing user sessions securely.

If you are confused on how to get the **DIRECT_URL** and **DATABASE_URL** you can go to our [discord](https://discord.gg/4cq9vkerA3) and ask for help or search on [youtube](https://youtube.com).



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
