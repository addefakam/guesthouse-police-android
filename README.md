# Bishoftu Police — Android App (Capacitor)

Native Android app for the **Police Module**. Loads the `/police-app` route from your Vercel deployment. Looks identical to the police mobile web app — same tabs (Home, Rooms, Active Stays), same dark theme, same jurisdiction filtering.

## ⚠️ This is a SEPARATE app from the Operator app

| | Operator App | Police App (this one) |
|---|---|---|
| App name | Guesthouse Manager | Bishoftu Police |
| Package ID | com.guesthouse.manager | com.guesthouse.police |
| Loads URL | /m | /police-app |
| Target users | Guesthouse operators + staff | Police officers |
| App icon | Guesthouse logo | Police shield (dark blue) |
| Theme | Indigo (#4f46e5) | Dark slate (#1e293b) |

## Quick Start

```bash
# 1. Clone
git clone https://github.com/addefakam/guesthouse-police-android.git
cd guesthouse-police-android

# 2. Install dependencies
npm install

# 3. Setup Android project
setup-android.bat    # Windows
# OR:
npx cap add android && npx cap sync android   # Mac/Linux

# 4. Open in Android Studio
npx cap open android

# 5. Click ▶️ Run to test on phone
```

## Build for Play Store

```bash
bash build-android.sh
# Output: android/app/build/outputs/bundle/release/app-release.aab
```

## Config

Edit `capacitor.config.json` to change the Vercel URL:
```json
{
  "appId": "com.guesthouse.police",
  "appName": "Bishoftu Police",
  "server": {
    "url": "https://your-app.vercel.app/police-app"
  }
}
```
