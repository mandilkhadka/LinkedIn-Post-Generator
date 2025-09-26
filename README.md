<p align="center">
  <img src="app/assets/images/banner.png" alt="LinkedIn Post Drafting App Banner" />
</p>

# ✍️ LinkedIn Post Drafting App
![Ruby](https://img.shields.io/badge/Ruby-3.1-red?logo=ruby&logoColor=white)
![Rails](https://img.shields.io/badge/Rails-7.0-red?logo=rubyonrails&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/Postgres-Database-blue?logo=postgresql&logoColor=white)
![Gemini](https://img.shields.io/badge/Gemini-API-4285F4?logo=google&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green)

Turn your messy notes into polished, post-ready LinkedIn content with the power of AI.  
Built with **Rails 7 + Gemini API** for makers, founders, and anyone who struggles with  
“How do I start this post?”

---

## 🌟 What It Does

- 📝 Paste your raw notes or half-baked ideas.  
- 🎨 Choose a tone → Professional, Friendly, Witty, or Inspirational.  
- 📏 Pick a length → Short, Medium, or Long.  
- 🔖 Let AI sprinkle in relevant hashtags (optional).  
- 📚 Save your drafts, refine later, and post with confidence.  

---

## 🛠 Tech Stack

- **Ruby on Rails 7**  
- **PostgreSQL** (storage)  
- **Gemini API** (AI magic ✨)  
- **dotenv-rails** (safe secrets)  

---

## 🚀 Getting Started

### 1️⃣ Clone this repo
```bash
git clone https://github.com/your-username/linkedin-post-drafting-app.git
cd linkedin-post-drafting-app
```

### 2️⃣ Install dependencies
```bash
bundle install
```

### 3️⃣ Configure secrets
```
Create a .env file in the project root:
env
GEMINI_API_KEY=your-gemini-api-key-here
DATABASE_URL=postgres://user:password@localhost:5432/linkedin_dev
⚠️ Never commit your API key to GitHub.
```
### 4️⃣ Setup the database
```bash
rails db:create db:migrate
```
### 5️⃣ Run the app
```bash
rails server
Then open 👉 http://localhost:3000
```

### 🎬 Demo Flow
```
✍️ Drop in some quick notes:
"launched new feature, boosted user growth 30%"

🎭 Pick your vibe → Witty
📏 Choose length → Short
🔮 Hit Generate Draft

🎉 Boom → “We just hit a huge milestone…” (AI polishes it up).
```
### 📂 Project Anatomy
```
app/models/post.rb → Notes + AI output storage

app/services/gemini_service.rb → The brain (calls Gemini API)

app/controllers/posts_controller.rb → The traffic cop 🚦

app/views/posts/ → Simple UI forms + results
```

### 🛣 Roadmap
```
⏳ Async generation with background jobs

🔴 Live-stream drafts via ActionCable

🔐 User accounts (multi-user)

📤 One-click publish to LinkedIn

🎨 Sleeker UI with TailwindCSS

🛠 Refactoring → Code works, but needs cleanup and optimization
```
---
