
```markdown
# Vidjoy

Welcome to Vidjoy! This latest version introduces a partnership program, allowing users to become partners and run their own Vidjoy instances.

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
