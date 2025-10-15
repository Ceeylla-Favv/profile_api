# ProfileApi

A simple Phoenix-based API that demonstrates environment variable loading via `.env`, user data responses, and random cat fact generation.

---

## 🚀 Getting Started

### 1. Clone the repository
```bash
git clone https://github.com/Ceeylla-Favv/profile_api.git
cd profile_api
```
### 2. Install dependencies
mix deps.get

⚙️ Dependencies
Dependency	Purpose
Phoenix	Core web framework
Plug/Cowboy	HTTP server
DotenvParser	Loads .env files in dev environment
Jason	JSON encoding/decoding
HTTPoison API requests
CORSPlug CORS handling

### 3. Setup the environment

Create a .env file in the project root:
```
USER_EMAIL=youremail@example.com
USER_NAME="Your Name"
USER_STACK="Elixir/Phoenix"
```


### 4. Run the server
mix phx.server


### 5. Visit the API at:
👉 http://localhost:4000/me




### 6. Then test the endpoint:

curl http://localhost:4000/me

```
Expected JSON response:
{
  "status": "success",
  "user": {
    "email": "you@example.com",
    "name": "Your Full Name",
    "stack": "Elixir/Phoenix"},
  "timestamp": "2025-10-15T12:00:00.000Z",
  "fact": "Cats have five toes on their front paws."
}
```

🧰 Notes

.env loading only works in development (config_env() == :dev).

In production, configure your environment variables directly.

Uses DotenvParser for .env support (see runtime.exs).
