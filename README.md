# Barnabas AI — Church Volunteer Assistant

Demo page for Barnabas AI, Farragut Christian Church's AI-powered volunteer management assistant.

## Setup — GitHub Pages

1. Create a new repo on GitHub (e.g., `barnabas-ai`)
2. Push these files to the `main` branch
3. Go to **Settings** → **Pages**
4. Under "Source", select **Deploy from a branch**
5. Select **main** branch, root folder `/`
6. Click **Save**
7. Your site will be live at `https://YOUR-USERNAME.github.io/barnabas-ai/`

## Files

- `index.html` — Redirects to demo page
- `demo.html` — Barnabas AI demo (access code protected)

## Access Code

The demo page requires code **FCC2026** to use. Change this in `demo.html` by editing the line:

```javascript
const ACCESS_CODE = "FCC2026";
```

## How It Works

1. User enters access code
2. User enters a name and phone number
3. Page calls the n8n webhook
4. n8n creates a Twilio Conversation with Barnabas AI
5. User receives a group text and can interact with Barnabas
