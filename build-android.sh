#!/usr/bin/env bash
set -e
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  Bishoftu Police — Android Build Script"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "▶ Step 1/4: Syncing Capacitor..."
npx cap sync android
echo "  ✓ Synced"
echo ""
echo "▶ Step 2/4: Building Android App Bundle (AAB)..."
cd android
./gradlew bundleRelease --no-daemon
cd ..
echo "  ✓ Build complete"
AAB_PATH="android/app/build/outputs/bundle/release/app-release.aab"
if [ -f "$AAB_PATH" ]; then
    echo ""
    echo "▶ Step 3/4: AAB file ready!"
    echo "  Location: $AAB_PATH"
    echo "  Size: $(du -h "$AAB_PATH" | cut -f1)"
else
    echo "❌ AAB not found. Check build output above."
    exit 1
fi
echo ""
echo "▶ Step 4/4: Upload to Google Play Console"
echo "  1. Go to: https://play.google.com/console"
echo "  2. Create a NEW app named 'Bishoftu Police'"
echo "  3. Upload the AAB file"
echo "  4. Fill listing + submit for review"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  ✅ Build complete!"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
