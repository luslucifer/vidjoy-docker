

# Vidjoy

Welcome to Vidjoy! This latest version introduces a partnership program, allowing users to become partners and run their own Vidjoy instances.

## Getting Started

To host your own Vidjoy instance, follow these steps:

1. **Install Docker** (if not already installed):  
   Follow the instructions on the [Docker installation page](https://docs.docker.com/get-docker/) to set up Docker on your system.

2. **Clone the repository**:
   ```bash
   git clone https://github.com/luslucifer/vidjoy-docker.git
   ```

3. **Change directory**:
   ```bash
   cd vidjoy-docker
   ```

4. **Create a `.env` file**:
   In the `vidjoy-docker` directory, create a `.env` file to configure your environment variables. Here’s an example:

   ```plaintext
   TMDB_KEY=your_tmdb_api_key_here  # Replace with your actual TMDB API key
   PROTOCOL=http                    # Use 'http' for local development, 'https' if you have SSL configured
   ```

   - Replace `your_tmdb_api_key_here` with your actual TMDB API key.
   - Set `PROTOCOL` to `http` if running locally or `https` if you have SSL configured.

5. **Start the project with Docker Compose**:
   Run the following command to start the containers in detached mode:

   ```bash
   docker compose up -d
   ```

6. **Access Vidjoy**:
   After starting, you should be able to access Vidjoy at `http://localhost` (or `https://localhost` if using SSL) in your browser.

---
### Requirements

- A VPS with **4GB of RAM** is required to run Vidjoy smoothly.

## Partnership Program

Vidjoy now allows users to become partners. When you host a Vidjoy instance, it will keep track of all connected servers and automatically update the DNS of the **moviekex.online** domain.

### Benefits of Partnership

- **Improved Uptime**: The more servers connected, the better the Vidjoy uptime will be. With multiple servers, downtime will be nearly zero.
- **Increased Speed**: A greater number of servers contributes to faster processing of requests.
- **Smart Request Processing**: Incoming requests will be handled intelligently. For example, if a server is located in the USA and requests are coming from the same region, all servers in the USA will receive those requests, optimizing performance and response times.

### Future Updates

Soon, we will be introducing advertisements, allowing all contributors and shareholders to earn based on the number of requests their servers receive. This will create an additional revenue stream for those involved in the Vidjoy ecosystem.

By becoming a partner, you help maintain a robust and scalable environment for all Vidjoy users!

