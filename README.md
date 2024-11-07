
# 🌟 **Vidjoy** 🌟

Welcome to **Vidjoy**! The latest update introduces a **Partnership Program**, allowing users to run their own Vidjoy instances and join a collaborative streaming network.

---

## **What is Vidjoy?** 🎬

**Vidjoy** is a next-gen, self-hosted media streaming platform designed for flexibility and scalability. It allows users to deploy and manage personalized streaming instances with Docker, making it ideal for anyone wanting control over their media.

Through Vidjoy's new **Partnership Program**, partners can create independent Vidjoy instances and collaborate in a global network that enhances streaming performance, uptime, and accessibility.

**Features include**:

- Seamless **TMDB API** integration for rich metadata.
- Distributed hosting to improve uptime and performance.
- Privacy and flexibility with a fully customizable platform.
- Future monetization options through ads for revenue generation.

---

## **Key Features** 🚀

- **🌍 Distributed Hosting**: Run multiple Vidjoy instances for better uptime and streaming speed.
- **🤝 Partnership Program**: Join a global ecosystem, where each server improves the network’s speed and resilience.
- **🎥 TMDB Integration**: Access content metadata effortlessly to provide viewers a richer media experience.
- **🔒 Self-Hosted Solution**: Complete control over your media hosting setup, from privacy to performance.
- **💸 Future Monetization**: Partners can benefit from revenue through advertisement integration (coming soon).

---

## **How Vidjoy Works** 🛠️

Vidjoy simplifies setup using **Docker** to streamline deployment, keeping services isolated for security and easy maintenance. Each instance can be configured through environment variables, enabling a tailored experience for each user.

By joining the Vidjoy Partner Network, you contribute to a distributed system that balances load, increases uptime, and boosts speed by intelligently routing users to the nearest server.

---

## **Who is Vidjoy For?** 🤔

Vidjoy is ideal for:
- **Media Enthusiasts**: Private, self-managed streaming.
- **Developers**: Interested in enhancing the platform or hosting their own instances.
- **Small Media Businesses**: Affordable, scalable alternative to proprietary streaming.
- **Content Creators**: Host exclusive video content without third-party restrictions.

With Vidjoy, you have both autonomy and access to a collaborative network, offering a unique media hosting solution!

---

## **Getting Started** 🚀

To host your own Vidjoy instance, follow these steps:

### **Prerequisites**

- 🐳 **Docker**: Ensure Docker is installed ([Installation Guide](https://docs.docker.com/get-docker/))
- 💾 **VPS with 4GB RAM**: For smooth Vidjoy operation.

### **Installation Steps**

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/luslucifer/vidjoy-docker.git
   cd vidjoy-docker
   ```

2. **Configure Environment Variables**:
   - Copy `.env.example` to `.env` and edit the `.env` file for your setup:
     ```bash
     cp .env.example .env
     ```

3. **Run Vidjoy with Docker Compose**:
   ```bash
   docker compose up -d
   ```

4. **Access Vidjoy**:
   - Once started, visit `http://localhost` or `https://localhost` (if SSL is configured) to view your instance.

---

## **Environment Variables Explained** 🔍

Refer to the sample `.env` configuration below. Some key variables include:

- `DATABASE_URL`: **Prisma Accelerate URL** (generate from [Prisma](https://console.prisma.io)).
- `DIRECT_URL`: **PostgreSQL direct URL** (e.g., from [Supabase](https://supabase.com)).
- `TMDB_KEY`: **TMDB API key** for metadata.
- `KINDE_*`: Optional Kinde authentication variables for user session management.

For questions on variables, join our [Discord](https://discord.gg/4cq9vkerA3) or look up guides on [YouTube](https://youtube.com).

---

## **Partnership Program** 🤝

Become a Vidjoy Partner and contribute to a globally optimized media network.

### **Benefits of Partnership** 🌍

- **Improved Uptime**: Distributed servers ensure 99.9% uptime.
- **Enhanced Speed**: With more servers, requests are processed faster.
- **Smart Request Handling**: Servers closest to a request’s origin handle it, optimizing speed.

**Coming Soon:** Partners will earn ad revenue based on request volume, offering a new income stream to Vidjoy contributors!

---

## **Maintenance Commands** 🛠️

For everyday management, here are some helpful Docker commands:

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

**Thank you for being a part of Vidjoy!** We’re excited to build a more connected and efficient streaming platform together.
